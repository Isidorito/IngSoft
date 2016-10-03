class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.integer :accommodation_type
      t.integer :accommodation_owner
      t.integer :asker
      t.string :question
      t.string :answer

      t.timestamps
    end
  end
end
