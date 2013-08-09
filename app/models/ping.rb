class Ping < ActiveRecord::Base
  attr_accessible :average_time, :site_id, :status
  belongs_to :site
end
