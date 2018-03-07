module ApplicationHelper
  # Tells everywhere where the devise resource is

  def resource_name
      :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
end
