require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
   test "nao salvar project sem nome" do
   		project = Project.new
   		project.nome = nil
    	assert !project.save, "Salvou projeto sem nome"
   end
end
