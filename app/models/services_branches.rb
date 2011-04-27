class ServicesBranches < ActiveRecord::Base
  belongs_to :branch
  belongs_to :service
end
