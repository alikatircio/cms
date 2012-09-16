class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    respond_with(@projects)
  end

  def show
    @project = Project.find(params[:id])
    respond_with(@projects)
  end

  def new
    @project = Project.new
    respond_with(@projects)
  end

  def edit
    @project = Project.find(params[:id])
    respond_with(@projects)
  end

  def create
    @project = Project.new(params[:project])
    @project.save
    respond_with(@projects)
  end

  def update
    @project = Project.find(params[:id])
    @project.update_attributes(params[:project])
    respond_with(@projects)
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    respond_with(@projects)
  end
end