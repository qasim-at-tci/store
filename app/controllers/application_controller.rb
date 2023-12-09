class ApplicationController < ActionController::API
  def health
    render json: { status:'OK' }
  end
end
