class SitesActivity < ActiveRecord::Base
  belongs_to :site
  belongs_to :activity
end
