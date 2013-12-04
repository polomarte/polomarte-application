class ProjectsController < ApplicationController

  def index
    @projects = Project.all
    @project.nil?  ? new : edit
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to projects_path, notice: "Project created!"
    else
      @errors = @project
      @project = nil
      index
      render 'index'
    end
  end

  def show
    @project = params[:id]
    index
  end

  def edit
    @project = Project.find(params[:id])
    render 'index'
  end

  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(project_params)
      redirect_to project_path(@project.id), notice: "Project updated"
    else 
      @errors = @project
      index
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path, notice: "Project destroyed!"
  end

  private
  def project_params
    params.require(:project).permit(:name, tasks_attributes: [:id, :name, :description, :finished, :_destroy])
  end
end

