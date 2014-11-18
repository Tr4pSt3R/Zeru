require 'spec_helper'

RSpec.describe InfoController, type: :controller do 
  describe "GET #team" do 
    it "responds successfully with an HTTP 200 status code" do 
      get :team
      expect(response).to be_success
      expect(response.status).to eq(200)
    end
  end
end
