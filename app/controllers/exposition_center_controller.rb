class ExpositionCenterController < ApplicationController
  before_filter :login_required, :except => [:index]
  
  def index
    #@ExpositionCenters = ExpositionCenter.find(:all, :order => "created_at DESC")     
    #respond_to do |format|
    #  format.html # index.html.erb
    #  format.json { render json: @ExpositionCenters }
    #end
  end
  
  def new
    @ExpositionCenter = ExpositionCenter.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ExpositionCenter }
    end    
  end
  
  def create
    @ExpositionCenter = ExpositionCenter.new(params[:comment])

    respond_to do |format|
      if @ExpositionCenter.save
        format.html { redirect_to root_path, notice: 'La imagen fue creada exitosamente.' }
        #format.json { render json: @ExpositionCenter, status: :created, location: @ExpositionCenter }
      else
        flash[:error] = 'Por favor llene todos los campos requeridos.'
        format.html { render action: "new" }
        format.json { render json: @ExpositionCenter.errors, status: :unprocessable_entity }
      end
    end
    
    def destroy
      @ExpositionCenter = ExpositionCenter.find(params[:id])
      @ExpositionCenter.destroy

      respond_to do |format|
        flash[:notice] = 'La imagen fue eliminada exitosamente.'
        format.html { redirect_to comments_url }
        format.json { head :no_content }
      end
    end
      
  end
  
end
