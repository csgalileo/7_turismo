class CreateSitesActivities < ActiveRecord::Migration
  def self.up
    create_table :sites_activities do |t|
      t.references :site
      t.references :activity

      t.timestamps
    end
  end

  def self.down
    drop_table :sites_activities
  end
end
