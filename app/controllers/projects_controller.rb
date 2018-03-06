class ProjectsController < ApplicationController
  def index
    if params[:search].nil? or params[:search].blank?
      @projects = Project.where(private: false)
    else
      @projects = Project.where(private: false).global_search(params[:search])
    end
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
    @tech_project = TechProject.new
    @technologies = Technology.all
  end

  def create
    @project = Project.new(project_params)
    @project.owner = current_user
    @tech_project =TechProject.new(tech_p_params)
    raise
  end

  private

  def project_params
    params.require(:project).permit(:name, :aim, :category, :image)
  end

  def tech_p_params
    params[:project].require(:tech_project).permit(:technologies)
  end
end
