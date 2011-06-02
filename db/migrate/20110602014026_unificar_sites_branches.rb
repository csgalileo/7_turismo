class UnificarSitesBranches < ActiveRecord::Migration
  def self.up

	add_column :sites, :location_id, :integer
	add_column :sites, :address, :string
	add_column :sites, :phone, :string
	add_column :sites, :email, :string
	

  end

  def self.down
  
	remove_column :sites, :location_id
	remove_column :sites, :address
	remove_column :sites, :phone
	remove_column :sites, :email
			
  end
end
