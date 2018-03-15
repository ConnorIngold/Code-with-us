class MessagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:get_new_messages]
  def new
    @message = Message.new
    @project = Project.find(params[:project_id])
    authorize @message
  end

  def create
    @message = Message.new(message_params)
    @user = User.where(full_name: params[:message][:recipient_id]).first
    @message.sender = current_user
    @project = Project.find(params[:project_id])
    @message.project = @project
    authorize @message
    if @message.save
      respond_to do |format|
        format.html { render 'messages/new' }
        format.js
      end
    else
      render :new
    end
  end

  # def get_new_messages(last_message_where_sender_wasnt_me)
  #   @message = Message.new
  #   authorize @message
  #   respond_to do |format|
  #     format.json { render json: {new_messages: Message.where("created_at < ?", ) } }
  #   end
  # end

  def edit
    @message = Message.find(params[:id])
    @project = Project.find(params[:project_id])
    authorize @message
  end

  def update
    @message = Message.find(params[:id])
    @user = User.where(full_name: user_params[:user_id]).first
    @message.recipient = nil
    @message.recipient = @user
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
