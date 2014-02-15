require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
   test "nao salvar project sem name" do
   		project = Project.new
   		project.name = nil
    	assert !project.save, "Salvou projeto sem name"
   end
end
