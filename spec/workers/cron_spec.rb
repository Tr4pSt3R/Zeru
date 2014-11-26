require 'spec_helper'

RSpec.describe 'Cron' do 
  before do 
    Memoid.stubs(:due_today)
  end

  after :all do 
  	Timecop.unfreeze
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
      memoid = Fabricate :memoid, release_dates: [ Fabricate(:due_today) ]

      Cron.run

      # binding.pry

      expect(Memoid.fetch_ripe_memoids).to eq( [memoid.id] )
    end
  end
end