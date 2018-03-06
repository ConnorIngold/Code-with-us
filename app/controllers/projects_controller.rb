class ProjectsController < ApplicationController
  def index
    if params[:search].nil? or params[:search].blank?
      @projects = Project.all
    else
      @projects = Project.global_search(params[:search])
    end
  end

  def show
    @project = Project.find(params[:id])
  end
end
