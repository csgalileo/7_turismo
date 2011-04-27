class CreateImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.string :image_url
      t.string :comment
      t.integer :cod_origin_id
      t.references :origin

      t.timestamps
    end
  end

  def self.down
    drop_table :images
  end
end
