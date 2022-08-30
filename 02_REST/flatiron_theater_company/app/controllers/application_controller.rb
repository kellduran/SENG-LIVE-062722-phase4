class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  private 

  def record_not_found(error)
      render json: {message: error.message}
  end

end
