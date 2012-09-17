class PagesController < ApplicationController
  before_filter :find_project
  def index
    @pages = @project.pages.paginate(:page => params[:page]).per_page(5)
    #@pages = @project.pages
    respond_with(@project, @pages)
  end

  def show
    @page = Page.find(params[:id])
    respond_with(@project, @page)
  end

  def new
    @page = Page.new
    respond_with(@project, @page)
  end

  def edit
    @page = @project.pages.find(params[:id])
    respond_with(@project, @page)
  end

  def create
    @page = Page.new(params[:page])
    @page.project_id = @project.id
    @page.save
    respond_with(@project, @page)
  end

  def update
    @page = @project.pages.find(params[:id])
    @page.update_attributes(params[:page])
    respond_with(@project, @page)
  end

  def destroy
    @page = @project.pages.find(params[:id])
    @page.destroy
    respond_with(@project, @page)
  end
  def find_project
    @project = Project.find(params[:project_id])
  end
end