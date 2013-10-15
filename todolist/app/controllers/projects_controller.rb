class ProjectsController < ApplicationController
  def index
    @projects = Project.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def show
    @project = Project.find(params[:id])
    @projects = Project.all

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  def new
    @project = Project.new
    @projects = Project.all

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def edit
    @project = Project.find(params[:id])
    @projects = Project.all
  end

  def create
    @project = Project.new(params[:project])
    @projects = Project.all

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Projeto criado com sucesso.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @project = Project.find(params[:id])
    @projects = Project.all

    respond_to do |format|
      if @project.update_attributes(params[:project])
        format.html { redirect_to @project, notice: 'Projeto atualizado com sucesso.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    @projects = Project.all

    respond_to do |format|
      format.html { redirect_to projects_url }
    end
  end
end
