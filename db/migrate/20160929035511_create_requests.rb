class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.integer :accommodation_type
      t.integer :accommodation_owner
      t.integer :requester
      t.date :initial_date
      t.date :final_date

      t.timestamps
    end
  end
end
