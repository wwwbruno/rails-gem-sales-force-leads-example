class HomeController < ApplicationController
  def index
    @url = SfLeads::link_to_login
  end
end
