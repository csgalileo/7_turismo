class CreateServicesBranches < ActiveRecord::Migration
  def self.up
    create_table :services_branches do |t|
      t.references :branch
      t.references :service

      t.timestamps
    end
  end

  def self.down
    drop_table :services_branches
  end
end
