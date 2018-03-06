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
    tech_p_params[:technologies].each do |tech|
      if tech.length > 0
        @technology = Technology.find(tech.to_i)
        @project.technologies  << @technology
      end
    end
    if @project.save
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  def edit
    @project = Project.find(params[:id])
    @technologies = Technology.all
  end

  def update
    @project = Project.find(params[:id])
    @project.update(project_params)
    @project.technologies = []
    tech_p_params[:technologies].each do |tech|
        if tech.length > 0
      @technology = Technology.find(tech.to_i)
      @project.technologies  << @technology
      end
    end
    if @project.save
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path
  end



  private

  def project_params
    params.require(:project).permit(:name, :aim, :category, :image)
  end

  def tech_p_params
    params[:project].require(:tech_project).permit({technologies:[]})
  end
end
