require 'errors'
#require 'will_paginate/array'
class ApplicationController < ActionController::Base
  include ControllerAuthentication
  protect_from_forgery
  rescue_from ActiveRecord::RecordNotFound, :with => :render_missing
  include Errors 
  uses_tooltip

  def render_missing
    flash[:alert] = "La pagina solicitada no existe."
    respond_to do |format|
      format.html {redirect_to root_path}
      format.json { render json: @comments }
    end 
  end
        
end
