class AvailablitiesController < ApplicationController
  # GET /availablities
  # GET /availablities.json
  def index
    @availablities = Availablity.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @availablities }
    end
  end

  # GET /availablities/1
  # GET /availablities/1.json
  def show
    @availablity = Availablity.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @availablity }
    end
  end

  # GET /availablities/new
  # GET /availablities/new.json
  def new
    @availablity = Availablity.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @availablity }
    end
  end

  # GET /availablities/1/edit
  def edit
    @availablity = Availablity.find(params[:id])
  end

  # POST /availablities
  # POST /availablities.json
  def create
    @availablity = Availablity.new(params[:availablity])

    respond_to do |format|
      if @availablity.save
        format.html { redirect_to @availablity, notice: 'Availablity was successfully created.' }
        format.json { render json: @availablity, status: :created, location: @availablity }
      else
        format.html { render action: "new" }
        format.json { render json: @availablity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /availablities/1
  # PUT /availablities/1.json
  def update
    @availablity = Availablity.find(params[:id])

    respond_to do |format|
      if @availablity.update_attributes(params[:availablity])
        format.html { redirect_to @availablity, notice: 'Availablity was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @availablity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /availablities/1
  # DELETE /availablities/1.json
  def destroy
    @availablity = Availablity.find(params[:id])
    @availablity.destroy

    respond_to do |format|
      format.html { redirect_to availablities_url }
      format.json { head :no_content }
    end
  end
end
