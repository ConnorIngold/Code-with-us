class TasksController < ApplicationController
  def new
    @task = Task.new
    @project = Project.find(params[:project_id])
  end

  def create
    @task = Task.new(task_params)
    @project = Project.find(params[:project_id])
    @task.project = @project
    @user = User.where(email: user_params[:user_id]).first
    @task.user = @user
    if @task.save
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  def edit
    @task = Task.find(params[:id])
    @project = Project.find(params[:project_id])
  end

  def update
    @task = Task.find(params[:id])
    @project = Project.find(params[:id])
    @user = User.where(email: user_params[:user_id]).first
    @task.user = 0
    @task.user = @user
    @task.update(task_params)
    if @task.save
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to project_path(@task.project)
  end

  private

  def user_params
    params.require(:task).permit(:user_id)
  end

  def task_params
    params.require(:task).permit(:name, :description, :difficulty)
  end
end
