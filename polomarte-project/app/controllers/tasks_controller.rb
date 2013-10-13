class TasksController < ApplicationController
  def create
    @task = Task.create!(params[:task].permit(:description, :finalized, :project_id))
    redirect_to project_path @task.project
  end

  def update
    @task = Task.find(params[:id])
    @task.update_attributes!(params[:task].permit(:description, :finalized, :project_id))
    respond_to do |format|
      format.html { redirect_to project_path @task.project }
      format.js
    end
  end

  def destroy
    @task = Task.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to project_path @task.project }
      format.js
    end
  end

  private
  # Never trust parameters from the scary internet, only allow the white list through.
  def task_params
    params.require(:task).permit(:description, :finalized, :project_id)
  end
end
