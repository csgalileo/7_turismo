class CreateClicks < ActiveRecord::Migration
  def self.up
    create_table :clicks do |t|
      t.string :ip_address
      t.datetime :date
      t.references :advertisement

      t.timestamps
    end
  end

  def self.down
    drop_table :clicks
  end
end
