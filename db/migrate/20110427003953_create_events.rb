class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :description
      t.datetime :start_date
      t.datetime :final_date
      t.string :title
      t.string :link
      t.references :user

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
