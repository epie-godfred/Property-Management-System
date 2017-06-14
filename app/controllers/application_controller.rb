class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  rescue_from ActiveRecord::RecordNotFound,         with: :render_not_found
  rescue_from ActionController::RoutingError,       with: :render_not_found
  rescue_from ::AbstractController::ActionNotFound, with: :render_not_found

  def render_not_found(e)
    render 'errors/error_404', status: 404
  end
end
