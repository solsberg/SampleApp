require 'spec_helper'

describe PagesController do
  integrate_views

  before(:each) do
    @base_title = "Ruby on Rails Tutorial Sample App"
  end 

  #Delete these examples and add some real ones
  it "should use PagesController" do
    controller.should be_an_instance_of(PagesController)
  end


  describe "GET 'home'" do         
    before(:each) do
      get 'home'
    end 
  
    it "should be successful" do
      response.should be_success
    end
    
    it "should have the correct title" do
      response.should have_tag("title", @base_title + " | Home")
    end
  end

  describe "GET 'contact'" do
    before(:each) do
      get 'contact'
    end 

    it "should be successful" do
      response.should be_success
    end

    it "should have the correct title" do
      response.should have_tag("title", @base_title + " | Contact")
    end
  end

  describe "GET 'about'" do
    before(:each) do
      get 'about'
    end 

    it "should be successful" do
      response.should be_success
    end

    it "should have the correct title" do
      response.should have_tag("title", @base_title + " | About")
    end
  end

  describe "GET 'help'" do
    before(:each) do
      get 'help'
    end 

    it "should be successful" do
      response.should be_success
    end

    it "should have the correct title" do
      response.should have_tag("title", @base_title + " | Help")
    end
  end

  describe "GET 'notitle'" do
    before(:each) do
      get 'notitle'
    end 

    it "should be successful" do
      response.should be_success
    end

    it "should have the correct title" do
      response.should have_tag("title", @base_title)
    end
  end
end
