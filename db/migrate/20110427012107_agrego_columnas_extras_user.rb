class AgregoColumnasExtrasUser < ActiveRecord::Migration
  def self.up
	add_column :users, :logo, :string
	add_column :users, :address, :string
	add_column :users, :web_page, :string
	add_column :users, :phone, :string
	add_column :users, :name, :string
  end

  def self.down
	remove_column :users, :logo
	remove_column :users, :address
	remove_column :users, :web_page		
	remove_column :users, :phone
	remove_column :users, :name
  end
end
