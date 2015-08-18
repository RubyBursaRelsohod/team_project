class FixSaxophoneColumnType < ActiveRecord::Migration
  def change
    rename_column :saxophones, :type, :saxophone_type
  end
end
