class ImproveReferences < ActiveRecord::Migration
  def change
    add_reference :pianos, :product, index: true, foreign_key: true
    add_reference :orders, :user, index: true, foreign_key: true
  end
end
