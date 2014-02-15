require 'test_helper'

class TaskTest < ActiveSupport::TestCase
   test "nao salvar task sem name" do
      task = Task.new
      task.name = nil
      assert !task.save, "Salvou task sem name"
   end 
   test "nao salvar task sem description" do
   		task = Task.new
   		task.description = nil
    	assert !task.save, "Salvou task sem description"
   end
   test "nao salvar task sem completed" do
   		task = Task.new
   		task.completed = nil
    	assert !task.save, "Salvou task sem completed"
   end
   test "nao salvar task sem project_id" do
   		task = Task.new
   		task.project_id = nil
    	assert !task.save, "Salvou task sem descricao"
   end
end
