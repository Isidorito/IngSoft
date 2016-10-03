class CorreccionColumnasRequestYQuestions < ActiveRecord::Migration[5.0]
  def change
  	rename_column :requests, :accommodation_type, :accommodation_id
  	rename_column :questions, :accommodation_type, :accommodation_id

  end
end
