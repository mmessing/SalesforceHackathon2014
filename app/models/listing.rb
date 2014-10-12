class Listing < ActiveRecord::Base
	belongs_to :user
	has_one :place
end
