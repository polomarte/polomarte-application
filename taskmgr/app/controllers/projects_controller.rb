class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(projects_params)
    if @project.save
      redirect_to projects_path, notice: "Project created!"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @project.update_attributes(projects_params)
      redirect_to partners_path, notice: "Project updated"
    else
      render 'edit'
    end
  end

  def destroy
    @project.destroy
    redirect_to projects_path, notice: "Project destroyed!"
  end

  private
  def projects_params
    params.require(:project).permit(:name)
  end
end

