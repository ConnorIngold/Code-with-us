class ProjectInvitesController < ApplicationController
 skip_before_action :authenticate_user!, only: [:index]

  def index
    @project_invites = policy_scope(ProjectInvite)
  end

  def new
    @project_invite = ProjectInvite.new
    @project = Project.find(params[:project_id])
    authorize @project_invite
  end

  def create
    @project_invite = ProjectInvite.new(project_inv_params)
    @project = Project.find(params[:project_id])
    @project_invite.update(user: current_user, project: @project, status: "pending")
    if @project_invite.save
      redirect_to project_path(@project)
    else
      render :new
    end

    puts @project.users
    puts @project_invite.user
    authorize @project_invite
  end

  def edit
    @project_invite = ProjectInvite.find(params[:id])
    authorize @project_invite
  end

  def update
    @project_invite = ProjectInvite.find(params[:id])
    @project_invite.update(project_inv_params)
    if @project_invite.save
      redirect_to project_path(@project_invite.project)
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

  def status_accept
    @project_invite = ProjectInvite.find(params[:id])
    @project_invite.status = "accepted"
    @project = @project_invite.project
    @user = @project_invite.user
    if @project_invite.save
    redirect_to edit_project_path(@project_invite.project)
    else
      render :new
    end
    authorize @project_invite
  end

  def status_decline
    @project_invite = ProjectInvite.find(params[:id])
    @project_invite.status = "declined"
    @project_invite.save
    redirect_to edit_project_path(@project_invite.project)
    authorize @project_invite
  end

  private

  def project_inv_params
    params.require(:project_invite).permit(:message)
  end
end
