class AddIndexUserIdOnRecipients < ActiveRecord::Migration
  def change
    add_index :recipients, :user_id
  end
end
