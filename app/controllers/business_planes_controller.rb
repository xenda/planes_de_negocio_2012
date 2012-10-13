class BusinessPlanesController < ApplicationController
  # GET /business_planes
  # GET /business_planes.json
  def index
    @business_planes = BusinessPlane.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @business_planes }
    end
  end

  # GET /business_planes/1
  # GET /business_planes/1.json
  def show
    @business_plane = BusinessPlane.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @business_plane }
    end
  end

  # GET /business_planes/new
  # GET /business_planes/new.json
  def new
    @business_plane = BusinessPlane.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @business_plane }
    end
  end

  # GET /business_planes/1/edit
  def edit
    @business_plane = BusinessPlane.find(params[:id])
  end

  # POST /business_planes
  # POST /business_planes.json
  def create
    @business_plane = BusinessPlane.new(params[:business_plane])

    respond_to do |format|
      if @business_plane.save
        format.html { redirect_to @business_plane, notice: 'Business plane was successfully created.' }
        format.json { render json: @business_plane, status: :created, location: @business_plane }
      else
        format.html { render action: "new" }
        format.json { render json: @business_plane.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /business_planes/1
  # PUT /business_planes/1.json
  def update
    @business_plane = BusinessPlane.find(params[:id])

    respond_to do |format|
      if @business_plane.update_attributes(params[:business_plane])
        format.html { redirect_to @business_plane, notice: 'Business plane was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @business_plane.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business_planes/1
  # DELETE /business_planes/1.json
  def destroy
    @business_plane = BusinessPlane.find(params[:id])
    @business_plane.destroy

    respond_to do |format|
      format.html { redirect_to business_planes_url }
      format.json { head :no_content }
    end
  end
end
