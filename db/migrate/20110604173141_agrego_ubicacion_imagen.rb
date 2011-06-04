class AgregoUbicacionImagen < ActiveRecord::Migration
  def self.up

	add_column :images, :imagelocation, :string

  end

  def self.down

	remove_column :images, :imagelocation
  			
  end
end
