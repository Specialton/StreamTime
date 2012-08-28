class StaffersController < ApplicationController
  # GET /staffers
  # GET /staffers.json
  def index
    @staffers = Staffer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @staffers }
    end
  end

  # GET /staffers/1
  # GET /staffers/1.json
  def show
    @staffer = Staffer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @staffer }
    end
  end

  # GET /staffers/new
  # GET /staffers/new.json
  def new
    @staffer = Staffer.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @staffer }
    end
    contact_info = @staffer.contact_infos.build
  end

  # GET /staffers/1/edit
  def edit
    @staffer = Staffer.find(params[:id])
  end

  # POST /staffers
  # POST /staffers.json
  def create
    @staffer = Staffer.new(params[:staffer])

    respond_to do |format|
      if @staffer.save
        format.html { redirect_to @staffer, notice: 'Staffer was successfully created.' }
        format.json { render json: @staffer, status: :created, location: @staffer }
      else
        format.html { render action: "new" }
        format.json { render json: @staffer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /staffers/1
  # PUT /staffers/1.json
  def update
    @staffer = Staffer.find(params[:id])

    respond_to do |format|
      if @staffer.update_attributes(params[:staffer])
        format.html { redirect_to @staffer, notice: 'Staffer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @staffer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /staffers/1
  # DELETE /staffers/1.json
  def destroy
    @staffer = Staffer.find(params[:id])
    @staffer.destroy

    respond_to do |format|
      format.html { redirect_to staffers_url }
      format.json { head :no_content }
    end
  end
end
