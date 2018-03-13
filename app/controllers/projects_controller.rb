class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @technologies = Technology.all
    @selected_technologies_names = params[:technologies]&.split('_') || []
    if params[:technologies].present?
      if params[:search].nil? || params[:search].blank?
        @projects = policy_scope(Project).where(private: false)
      else
        @projects = policy_scope(Project).where(private: false).project_search(params[:search])
      end
      @selected_technologies_names.each do |tech_name|
        @projects = @projects.select { |p| p.technologies.include? Technology.where(name: tech_name).first }
      end
    elsif params[:search].nil? || params[:search].blank?
      @projects = policy_scope(Project).where(private: false)
    else
      @projects = policy_scope(Project).where(private: false).project_search(params[:search])
    end
  end

  def show
    @project = Project.find(params[:id])
    @task = Task.new
    authorize @project
  end

  def new
    @project = Project.new
    @technologies = Technology.all
    authorize @project
  end

  def create
    @project = Project.new(project_params)
    @technologies = Technology.all
    @project.owner = current_user
    tech_p_params[:technology_ids].each do |tech|
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
    authorize @project
  end

  def edit
    @project = Project.find(params[:id])
    @technologies = Technology.all
    authorize @project
  end

  def update
    @project = Project.find(params[:id])
    @project.technologies = []
    @project.update(project_params)
    tech_p_params[:technology_ids].each do |tech|
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
    authorize @project
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path
    authorize @project
  end

  def closed
    @project = Project.find(params[:id])
    @project.open = false
    @project.save
    redirect_to project_path(@project)
    authorize @project
  end

  def open
    @project = Project.find(params[:id])
    @project.open = true
    @project.save
    redirect_to project_path(@project)
    authorize @project
  end

  def private
    @project = Project.find(params[:id])
    @project.private = true
    @project.save
    redirect_to project_path(@project)
    authorize @project
  end

  def public
    @project = Project.find(params[:id])
    @project.private = false
    @project.save
    redirect_to project_path(@project)
    authorize @project
  end

  private

  def project_params
    params.require(:project).permit(:name, :aim, :category, :image)
  end

  def tech_p_params
    params.require(:project).permit({technology_ids:[]})
  end
end
