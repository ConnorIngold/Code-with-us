class ProjectInvitesController < ApplicationController
  skip_before_action :authenticate_user!
  def new
    @project_invite = ProjectInvite.new
    @project = Project.find(params[:project_id])
    authorize @project_invite
  end

  def create
    @project_invite = ProjectInvite.new(project_inv_params)
    @project = Project.find(params[:project_id])
    @project_invite.user = current_user
    @project_invite.project = @project
    if @project_invite.save
      redirect_to project_path(@project)
    else
      render :new
    end
    authorize @project_invite
  end

  def edit
    @project_invite = ProjectInvite.find(params[:id])
    @project = Project.find(params[:project_id])
    authorize @project_invite
  end

  def update
    @project = Project.find(params[:project_id])
    @project_invite = ProjectInvite.find(params[:id])
    @project_invite.update(project_inv_params)
    if @project_invite.save
      redirect_to project_path(@project)
    else
      render :new
    end
    authorize @project_invite
  end

  def destroy
    @project_invite = ProjectInvite.find(params[:id])
    @project_invite.destroy
    redirect_to project_path(project_invite.project)
    authorize @project_invite
  end

  private

  def project_inv_params
    params.require(:project_invite).permit(:message)
  end
end
