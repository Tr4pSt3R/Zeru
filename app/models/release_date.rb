# == Schema Information
#
# Table name: release_dates
#
#  id            :integer          not null, primary key
#  delivery_date :string(255)
#  memoid_id     :integer
#

class ReleaseDate < ActiveRecord::Base

end
