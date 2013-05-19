class IpsController < ApplicationController
  before_filter :login_required
  def index
    @ips = Ip.find(:all, :order => "created_at DESC")
      
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ips }
    end
  end
  
  def show
    @ip = Ip.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ip }
    end
  end
  
end
