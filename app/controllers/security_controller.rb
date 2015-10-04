class SecurityController < ApplicationController
  def login
    res = SfLeads::get_access_token(params[:code])
    if res['error']
      redirect_to root_url, :alert => "You are not logged in!" unless access_token
    else
      session[:access_token] = res['access_token']
      session[:instance_url] = res['instance_url']
      redirect_to users_path, notice: "You are logged in!"
    end
  end
end
