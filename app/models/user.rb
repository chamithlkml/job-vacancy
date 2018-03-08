class User < ActiveRecord::Base
	validates :name, :password, :presence => true
	validates :name, :uniqueness => true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, :format => { with: VALID_EMAIL_REGEX }
	
	has_many :job_offers
end
