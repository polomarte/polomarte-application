# encoding: utf-8

require "spec_helper"

describe ProjectsController do
  describe "GET index" do
    it "populates an array of projects" do
      project = FactoryGirl.create(:project)
      get :index
      assigns(:projects).should eq([project])
    end

    it "renders the :index view" do
      get :index
      response.should render_template :index
    end

    it "has a 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end
  end

  describe "GET new" do
    it "has a 200 status code" do
      get :new
      expect(response.status).to eq(200)
    end
  end

  describe "POST create" do
    context "with valid attributes" do
      it "creates a new project" do
        expect{
          post :create, project: FactoryGirl.attributes_for(:project)
        }.to change(Project,:count).by(1)
      end

      it "redirects to the new project" do
        post :create, project: FactoryGirl.attributes_for(:project)
        response.should redirect_to Project.last
      end
    end
  end
end