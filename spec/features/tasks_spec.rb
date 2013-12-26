require 'spec_helper'

describe "Tasks" do

  describe "Tasks index" do
    it "should show the string 'Tarefas'" do

      visit '/tasks'
      expect(page).to have_content('Tarefas')

    end

  end


  describe 'Tasks create' do

    it "should be possible to add a task to the first available project given theres at least one project" do


      Project.where(:name => 'meu-projeto-teste').first_or_create

      visit '/tasks/new'

      expect(page).to have_content('Nova Tarefa')

      fill_in "task_name", :with => 'foo bar baz'
      select 'alta', :from => 'task_priority_id'

      select 'meu-projeto-teste', from: 'task_project_id'

      fill_in "task_content", :with => 'lorem ipsum'

      click_button 'Criar Tarefa'

      expect(page).to have_content "Task was successfully created."

    end

  end


end