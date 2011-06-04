class AgregoLinkAds < ActiveRecord::Migration
  def self.up
	add_column :advertisements, :link, :string
  end

  def self.down
	remove_column :advertisements, :link
  end
end
