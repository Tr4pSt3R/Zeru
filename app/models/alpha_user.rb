class AlphaUser < ActiveRecord::Base
	validates :email, uniqueness: true
end
