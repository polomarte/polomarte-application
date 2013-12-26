require 'spec_helper'

describe "Projects" do
  describe "Projects index" do


    it "should show the string 'Projetos'" do

      visit '/projects'
      expect(page).to have_content('Projetos')

    end
  end

  describe 'Add and delete a project' do

    it 'should add and delete a project' do

      visit '/projects/new'

      expect(page).to have_content('Novo')

      #TODO criar e apagar um projeto


    end

  end


end
