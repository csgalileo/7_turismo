class CreateSites < ActiveRecord::Migration
  def self.up
    create_table :sites do |t|
      t.references :user
      t.string :title
      t.string :name
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :sites
  end
end
