class AddFieldsToUsers < ActiveRecord::Migration[5.0]
  def change
  	add_column :users, :admin, :boolean, default: false
  	add_column :users, :registered, :boolean, default: true
  end	
end
