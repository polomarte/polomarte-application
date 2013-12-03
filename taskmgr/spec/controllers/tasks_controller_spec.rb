require 'spec_helper'

describe TasksController do

  describe "GET 'new'" do
    before do
      get :new
    end

    it { should respond_with(:success) }
    it { should render_template(:new) }
    it { should render_with_layout(:application) }

    it 'should assign a new task' do
      assigns(:task).should be_a_new(Task)
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