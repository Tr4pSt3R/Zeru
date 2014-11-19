# == Schema Information
#
# Table name: alpha_users
#
#  id         :integer          not null, primary key
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class AlphaUser < ActiveRecord::Base
	validates :email, uniqueness: true
end
