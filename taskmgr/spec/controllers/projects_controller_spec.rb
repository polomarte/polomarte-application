require 'spec_helper'

describe ProjectsController do

  describe "GET 'new'" do
    before do
      get :new
    end

    it { should respond_with(:success) }
    it { should render_template(:new) }
    it { should render_with_layout(:application) }

    it 'should assign a new project' do
      assigns(:project).should be_a_new(Project)
    end
  end

  describe "GET 'index'" do
    before do
      get :index
    end

    it { should respond_with(:success) }
    it { should render_template(:index) }
    it { should render_with_layout(:application) }
  end
end