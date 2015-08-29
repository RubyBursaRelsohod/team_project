class CommentsController < ApplicationController
  before_action :set_comment, only: [:edit, :update, :destroy]

  def create
    # @comment = Comment.new(user: current_user, product: params[:id])
    @comment = Comment.new(comment_params)

    if @comment.save
      respond_to do |format|
        format.html do
          redirect_to product_path(@comment.product_id), notice: 'Comment Created!'
        end
      end
    else
      redirect_to product_path(@comment.product_id), notice: 'Something went wrong'
    end
  end

  def edit
  end

  def update
    if @comment.update(comment_params)
      respond_to do |format|
        format.html do
          redirect_to product_path(@comment.product_id), notice: 'Comment Updated'
        end
      end
    else
      redirect_to comment_path(@comment_id), notice: 'Something went wrong'
    end
  end

  def destroy
    @comment.destroy!
    respond_to do
      redirect_to product_path(@comment.product_id), notice: 'Comment Deleted'
    end
  end

  private

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:body)
  end
end
