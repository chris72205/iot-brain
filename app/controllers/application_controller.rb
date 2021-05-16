class ApplicationController < ActionController::API
  before_action :require_login
  
  private

  def not_authenticated
    redirect_to :forbidden, alert: "Access forbidden, please log in."
  end
end
