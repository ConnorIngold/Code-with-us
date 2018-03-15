class CallbacksController < Devise::OmniauthCallbacksController
  def github
    @user = User.from_omniauth(request.env["omniauth.auth"])
    if @user.save
      sign_in_and_redirect @user
    else
      redirect_to root_path
    end
  end
end
