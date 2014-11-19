require 'spec_helper' 

RSpec.describe "Memoid Release Job", type: :model do 
  describe "#scheduling" do 
    it "automatically schedules a delivery for tomorrow" do 
      memoid = Memoid.create content: "Counted it all joy!"
      tomorrow = Date.today.next_day.strftime("%Y-%m-%d")

      expect( memoid.next_delivery_date ).to eq tomorrow
    end
  end

  describe "when memoid is due for delivery today" do 
  	context "#today" do 
  	  it "collects due memoid(s)" do 
		memoid_1 = Fabricate :memoid, release_dates: [ Fabricate(:due_today) ]
		memoid_2 = Fabricate :memoid, release_dates: [ Fabricate(:due_today) ]

  	  	3.times do 
  	  	  memoid = Fabricate :memoid, release_dates: [ Fabricate(:due_tomorrow) ]
  	  	end

  	  	expect( Memoid.due_today ).to eq( [ memoid_1, memoid_2 ] )
	  end

  	  it "sends an email" do
  	    2.times{ Fabricate :memoid, release_dates: [ Fabricate(:due_today) ] }

  	    
	  end	
  	end
  end
end