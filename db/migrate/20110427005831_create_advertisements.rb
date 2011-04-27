class CreateAdvertisements < ActiveRecord::Migration
  def self.up
    create_table :advertisements do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.string :image_url
      t.references :user

      t.timestamps
    end
  end

  def self.down
    drop_table :advertisements
  end
end
