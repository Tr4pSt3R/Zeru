require 'spec_helper'

describe InfoController do 
  describe "GET #team" do 
    it "responds successfully with an HTTP 200 status code" do 
      get :team
        expect(response).to be_success
        expect(response.status).to eq(200)
    end

    it "renders the index template" do 
    	get :team
    	expect(response).to render_template("team")
    end
  end

  describe "GET #privacy" do 
    it "responds successfully with an HTTP 200 status code" do
      get :team 
    end 
  end
end
