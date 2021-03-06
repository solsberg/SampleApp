require 'spec_helper'

describe UsersController do
  integrate_views

  #Delete these examples and add some real ones
  it "should use UsersController" do
    controller.should be_an_instance_of(UsersController)
  end


  describe "GET 'new'" do                        
    before(:each) do
      get 'new'
    end

    it "should be successful" do
      response.should be_success
    end

    it "should have the right title" do
      response.should have_tag("title", /Sign Up/)
    end
  end
  
end
