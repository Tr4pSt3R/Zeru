require 'spec_helper'

describe "Users" do
  # describe "GET /users" do
  #   it "works! (now write some real specs)" do
  #     get users_path
  #     expect(response.status).to be(200)
  #   end
  # end

  describe "GET /sign_in" do 
  	context "user" do 
  	  it "signs in" do 
  	  	get new_user_session_path
  	  	expect(response.status).to be(200)
  	  end
  	end
  end

  describe "GET /sign_out" do 
  	context "user" do 
  	  it "signs out" do 
  	  	delete destroy_user_session_path
  	  	expect(response.status).to be(302)
  	  end
  	end
  end
end
