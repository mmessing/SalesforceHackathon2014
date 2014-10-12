class User < ActiveRecord::Base
	has_many :dogs
	has_many :listings
	has_many :messages, dependent: :destroy
end
