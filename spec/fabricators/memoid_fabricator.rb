# == Schema Information
#
# Table name: memoids
#
#  id         :integer          not null, primary key
#  content    :text
#  created_at :datetime
#  updated_at :datetime
#

Fabricator( :memoid) do 
  content { Faker::Lorem.paragraph }
end
