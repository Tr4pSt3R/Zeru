require 'spec_helper'

RSpec.describe ReleaseWorker do
  describe "#scheduling" do
    it "automatically schedules a delivery for tomorrow" do
      memoid = Memoid.create content: "Counted it all joy!"
      tomorrow = Date.today.next_day.strftime("%Y-%m-%d")

      expect( memoid.next_delivery_date ).to eq tomorrow
    end
  end

  describe "#collection of memoids due" do
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
  	    Fabricate :memoid, release_dates: [ Fabricate(:due_today) ]

        expect{ ReleaseWorker.perform_async }.to change(ReleaseWorker.jobs, :size).by(1)
	    end
  	end
  end
end
