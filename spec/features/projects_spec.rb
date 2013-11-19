require 'spec_helper'

describe "Projects" do
  describe "Projects index" do
    it "should show the string 'Projects'" do

      visit '/projects'
      expect(page).to have_content('Projects')

    end
  end
end
