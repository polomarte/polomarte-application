require 'spec_helper'

describe "Projects" do
  describe "GET /projects" do
    it "display projects" do
      Project.create!(:name => "Change the world")
      get projects_path
      response.body.should include("Change the world")
    end
  end 
  
  describe "POST /projects" do
    it "create projects" do
      post_via_redirect projects_path, :project => {:name => "Change the world"}
      get projects_path
      response.body.should include("Change the world")
    end
  end
end
