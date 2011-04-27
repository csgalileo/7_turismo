class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.datetime :date
      t.integer :cod_origin_id
      t.references :user
      t.references :origin

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
