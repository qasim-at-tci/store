class ApplicationController < ActionController::API
  include Authenticable
  
  def health
    render json: { status:'OK' }
  end
end
