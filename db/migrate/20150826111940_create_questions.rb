class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question
      t.text :answer
      t.integer :user_id
      t.boolean :is_faq

      t.timestamps null: false
    end
  end
end
