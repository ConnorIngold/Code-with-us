class MessagesController < ApplicationController
  [:create, :new, :edit, :update, :destory]
  def new
    @message = Message.new
    @project = Project.find(params[:project_id])
    authorize @message
  end

  def create
    @message = Message.new(message_params)
    @user = User.where(full_name: params[:message][:recipient_id]).first
    @message.recipient = @user
    @message.sender = current_user
    @project = Project.find(params[:project_id])
    @message.project = @project
    if @message.save
      redirect_to project_path(@project)
    else
      render :new
    end
    authorize @message
  end

  def edit
    @message = Message.find(params[:id])
    @project = Project.find(params[:project_id])
    authorize @message
  end

  def update
    @message = Message.find(params[:id])
    @user = User.where(full_name: user_params[:user_id]).first
    @message.user = nil
    @message.user = @user
    @message.update(message_params)
    if message.save
      redirect_to project_path(@message.project)
    else
      render :new
    end
    authorize @message
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    redirect_to project_path(@message.project)
    authorize @message
  end


  private

  def message_params
    params.require(:message).permit(:content)
  end
end
