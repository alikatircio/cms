class PagesController < ApplicationController
  def index
    @pages = Page.all

  end

  def show
    @page = Page.find(params[:id])
  end

  def new
    @page = Page.new

  end

  def edit
    @page = Page.find(params[:id])

  end

  def create
    @page = Page.new(params[:page])
    @page.save
    redirect_to pages_url

  end

  def update
    @page = Page.find(params[:id])
    @page.update_attributes(params[:page])
    redirect_to pages_url
  end

  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    redirect_to pages_url
  end
end