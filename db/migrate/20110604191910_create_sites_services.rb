class CreateSitesServices < ActiveRecord::Migration
  def self.up
    create_table :sites_services do |t|
      t.references :site
      t.references :service

      t.timestamps
    end
  end

  def self.down
    drop_table :sites_services
  end
end
