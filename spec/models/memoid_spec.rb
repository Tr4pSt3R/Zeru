# == Schema Information
#
# Table name: memoids
#
#  id         :integer          not null, primary key
#  content    :text
#  created_at :datetime
#  updated_at :datetime
#

require 'spec_helper'

RSpec.describe Memoid, type: :model do
  context "#associations" do 
  	it { should have_many(:release_dates) }
  end

  context "#validations" do
  	it { should validate_presence_of(:content) }
  end

  # scope
  context "due today" do 
  	it "fetches all memoids due for Today" do
  	  memoid = Fabricate :memoid, release_dates: [ Fabricate(:due_today) ]

      expect(Memoid.due_today).to eq([memoid])
  	end
  end
end
