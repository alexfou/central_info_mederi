require 'spec_helper'

describe SessionsController do

  describe "should handle session variable when loggin in with in/correct data" do
    it "should fetch user's data to authenticate using email and password" do
      user = mock('user_1')

      User.should_receive(:find_by_email).with('a@a.com').and_return(user)
      user.should_receive(:authenticate).with("aaa")
      
      post :create, {:email => 'a@a.com', :password => 'aaa'}
    end

    it "should render the home page if user incorrect" do
      user = mock('user_1')

      User.stub(:find_by_email).with('a@a.com').and_return(user)
      user.stub(:authenticate).with('z').and_return(false)

      post :create, {:email => 'a@a.com', :password => 'z'}

      response.should redirect_to(root_path)

    end
  end

  describe "GET 'destroy'" do
    it "returns http success" do
      get 'destroy'
      response.should be_success
    end
  end

end
