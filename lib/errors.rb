module Errors
   
  def not_allowed
    respond_to do |format|
      flash[:alert] = "Usted no tiene permiso para realizar esta accion."
      format.html { redirect_to root_path }     
    end
  end
    
end
