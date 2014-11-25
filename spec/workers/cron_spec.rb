require 'spec_helper'

RSpec.describe 'Cron' do 
  before do 
  	memoid = Fabricate :memoid, release_dates: [ Fabricate(:due_today) ]

  	Memoid.stub(:fetch_ripe_memoids)
  	ReleaseWorker.stub(:perform_async).with([memoid.id])
  end

  after :all do 
  	# Timecop.unfreeze
  end

  context "nothing to deliver" do 
  	it "shouldn't call release job" do 
  	  eight_am = Time.new.change(hour: 8)
  	  Timecop.freeze( eight_am )
  	  Cron.run
  	  expect(Memoid).to have_received(:fetch_ripe_memoids)
  	end
  end

  it "runs every day at 8:00am" do 
  	eight_am = Time.new.change(hour: 8)
  	Timecop.freeze( eight_am )

  	Cron.run

 	expect(Memoid).to have_received(:fetch_ripe_memoids)
 	expect(ReleaseWorker).to have_received(:perform_async)
  end
end