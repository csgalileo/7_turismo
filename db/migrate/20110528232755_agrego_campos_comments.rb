class AgregoCamposComments < ActiveRecord::Migration
  def self.up
	add_column :comments, :comment, :string
	add_column :comments, :show, :integer

  end

  def self.down
	remove_column :comments, :logo
	remove_column :comments, :show
  end
end
