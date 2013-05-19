class OcMembersController < ApplicationController
  before_filter :login_required, :except => [:index, :show]
  # GET /oc_members
  # GET /oc_members.json
  def index
    @oc_members = OcMember.find(:all, :order => "created_at ASC")
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @oc_members }
    end
  end

  # GET /oc_members/1
  # GET /oc_members/1.json
  def show
    @oc_member = OcMember.find(params[:id])
    if @oc_member.sex_type == "Hombre"
      @Dr = "Dr. "
    else
      @Dr = "Dra. "
    end
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @oc_member }
    end
  end

  # GET /oc_members/new
  # GET /oc_members/new.json
  def new
    @oc_member = OcMember.new
  end

  # GET /oc_members/1/edit
  def edit
    @oc_member = OcMember.find(params[:id])
  end

  # POST /oc_members
  # POST /oc_members.json
  def create
    #not_allowed
    @oc_member = OcMember.new(params[:oc_member])

    respond_to do |format|
      if @oc_member.save
        format.html { redirect_to @oc_member, notice: 'Oc member was successfully created.' }
        format.json { render json: @oc_member, status: :created, location: @oc_member }
      else
        format.html { render action: "new" }
        format.json { render json: @oc_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /oc_members/1
  # PUT /oc_members/1.json
  def update
    @oc_member = OcMember.find(params[:id])

    respond_to do |format|
      if @oc_member.update_attributes(params[:oc_member])
        format.html { redirect_to @oc_member, notice: 'Oc member was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @oc_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oc_members/1
  # DELETE /oc_members/1.json
  def destroy  
    @oc_member = OcMember.find(params[:id])
    @oc_member.destroy

    respond_to do |format|
      format.html { redirect_to oc_members_url }
      format.json { head :no_content }
    end
  end
end
