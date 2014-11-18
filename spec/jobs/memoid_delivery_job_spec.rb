require 'spec_helper' 

RSpec.describe "Memoid Release Job" do 
  describe "#scheduling" do 
    it "automatically scehdules a delivery for tomorrow" do 
      memoid = Memoid.create content: "Counted it all joy!"
      tomorrow = Date.today.next_day.strftime("%Y-%m-%d")

      expect( memoid.next_delivery_date ).to eq tomorrow
    end
  end

  describe "when memoid is due for delivery today" do 
  	it "schedules for delivery today" do
	  # memoid = Memoid.create content: "Count it all joy!"
	  # ReleaseDate.create delivery_date: Date.today.next_day, memoid_id: memoid.id

	  # expect(memoid.next_delivery_date).to eq( Date.today.next_day.strftime("%Y-%m-%d") )
    end	
  end
end