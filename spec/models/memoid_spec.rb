require 'spec_helper'

RSpec.describe Memoid, type: :model do
  context "#associations" do 
  	it { should have_many(:release_dates) }
  end

  context "#validations" do
  	it { should validate_presence_of(:content) }
  end
end