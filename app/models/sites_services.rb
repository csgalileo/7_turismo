class SitesServices < ActiveRecord::Base
  belongs_to :site
  belongs_to :service
end
