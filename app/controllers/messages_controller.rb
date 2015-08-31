class MessagesController < ApplicationController
  before_action :authenticate_user!

  def index
    @recipients = Recipient.where(user_id: current_user.id)
                  .order('created_at DESC')
    client_messages = []
    admin_messages = []
    @recipients.each do |r|
      client_messages.concat(User.find(r.user_id).messages
        .where(sender_id: r.user_id))
      admin_messages << r.message
    end
    @messages = client_messages.concat(admin_messages).sort do |a, b|
      a.id <=> b.id
    end.uniq
    # .group_by(&:id).map { |m| m[1][0] }
    new
  end

  def new
    @message = Message.new
    if current_user.admin?
      @recipients_new = User.all
    else
      @recipients_new = User.admins
    end
  end

  def create
    @message = current_user.messages.build(message_params)

    if @message.save
      redirect_to messages_path, notice: 'Message Sent!'
    else
      render :new, notice: 'Something went wrong...'
    end
  end

  private

  def message_params
    params.require(:message).permit(:body, :sender_id, user_tokens: [])
  end
end
