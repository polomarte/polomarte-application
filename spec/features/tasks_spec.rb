require 'spec_helper'

describe "Tasks" do

  describe "Tasks index" do
    it "should show the string 'Tarefas'" do

      visit '/tasks'
      expect(page).to have_content('Tarefas')

    end

  end

end

describe 'Tasks create' do

    it "should not be possible to add a task to an unexisting project" do

      visit '/tasks/new'



      expect(page).to have_content('Nova Tarefa')

    end

end
