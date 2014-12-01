require 'spec_helper'

RSpec.describe 'Cron', type: :model do 
  before :all do 
    Memoid.stubs(:due_today)
  end

  after :all do 
  	Timecop.return
  end

  describe ".routine" do 
    it "runs every day at 8:00am" do 
    	eight_am = Time.new.change(hour: 8)
    	Timecop.freeze( eight_am )

    	Cron.run

   	  expect(Memoid).to have_received(:due_today)
    end
  end

  context "nothing to deliver" do 
  	it "shouldn't call release job" do 
  	  eight_am = Time.new.change(hour: 8)
  	  Timecop.freeze( eight_am )

  	  Cron.run

  	  expect(Memoid).to have_received(:due_today)
  	  expect(ReleaseWorker).to have_received(:perform).never 
  	end
  end

  context "something to deliver" do 
    it "sends an email" do 
      # Memoid.stubs(:due_today)
      # Memoid.stubs(:empty?)
      # ReleaseWorker.stubs(:perform)

      # memoid_0 = Fabricate :memoid, release_dates: [ Fabricate(:due_today) ]
      # memoid_1 = Fabricate :memoid

      # eight_am = Time.new.change(hour: 8)
      # Timecop.freeze( eight_am )

      # Cron.run

      # expect(ReleaseWorker).to have_received(:perform).with([memoid_1.id])
      pending "I do not understand Test-Specific Extension"
    end
  end
end