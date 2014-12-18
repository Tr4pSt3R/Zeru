require 'spec_helper'

RSpec.describe MemoidsController, type: :controller do 
  describe "#create" do 
    context "when memoid is valid" do 
      it "redirects to #show" do 
        memoid = Memoid.create content: "Count it all joy"
        
        post :create, memoid: memoid.attributes
       
        expect(response).to redirect_to( assigns[:memoid] )
      end
    end

    context "invalid attributes" do 
      it "renders new form" do 
        memoid = Memoid.create content: nil

        post :create, memoid: memoid.attributes

	expect(response).to render_template :new
      end
    end
  end
end
