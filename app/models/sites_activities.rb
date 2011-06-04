class SitesActivities < ActiveRecord::Base
  belongs_to :site
  belongs_to :activity
end
