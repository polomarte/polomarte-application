require 'spec_helper'

describe ProjectsController do
    describe 'GET #index' do
      before { get :index }
    end

    describe 'GET #show' do
      before { get :show }
    end

    describe 'DELETE #destroy' do
      before { delete :destroy }
    end
end
