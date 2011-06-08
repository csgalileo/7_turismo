class AgregandoMapasGoogle < ActiveRecord::Migration
  def self.up
	add_column :sites, :latitud, :string
	add_column :sites, :longitud, :string
  end

  def self.down
  	remove_column :sites, :longitud
  	remove_column :sites, :latitud
  end
end
