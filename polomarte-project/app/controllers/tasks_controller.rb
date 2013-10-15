class TasksController < ApplicationController
  before_action :set_task, only: [:update, :destroy, :show, :edit]

  def create
    @task = Task.create(params[:task].permit(:description, :finalized, :project_id))
    redirect_to project_path @task.project
  end

  def update
    @task.update_attributes!(params[:task].permit(:description, :finalized, :project_id))
    respond_to do |format|
      format.html { redirect_to project_path @task.project }
      format.js
    end
  end

  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to project_path @task.project }
      format.js
    end
  end

  def show
  end

  def edit
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_task
    @task = Task.friendly.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def task_params
    params.require(:task).permit(:description, :finalized, :project_id)
  end
end
