class AssignmentStatusesController < ApplicationController
  # GET /assignment_statuses
  # GET /assignment_statuses.json
  def index
    @assignment_statuses = AssignmentStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @assignment_statuses }
    end
  end

  # GET /assignment_statuses/1
  # GET /assignment_statuses/1.json
  def show
    @assignment_status = AssignmentStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @assignment_status }
    end
  end

  # GET /assignment_statuses/new
  # GET /assignment_statuses/new.json
  def new
    @assignment_status = AssignmentStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @assignment_status }
    end
  end

  # GET /assignment_statuses/1/edit
  def edit
    @assignment_status = AssignmentStatus.find(params[:id])
  end

  # POST /assignment_statuses
  # POST /assignment_statuses.json
  def create
    @assignment_status = AssignmentStatus.new(params[:assignment_status])

    respond_to do |format|
      if @assignment_status.save
        format.html { redirect_to @assignment_status, notice: 'Assignment status was successfully created.' }
        format.json { render json: @assignment_status, status: :created, location: @assignment_status }
      else
        format.html { render action: "new" }
        format.json { render json: @assignment_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /assignment_statuses/1
  # PUT /assignment_statuses/1.json
  def update
    @assignment_status = AssignmentStatus.find(params[:id])

    respond_to do |format|
      if @assignment_status.update_attributes(params[:assignment_status])
        format.html { redirect_to @assignment_status, notice: 'Assignment status was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @assignment_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assignment_statuses/1
  # DELETE /assignment_statuses/1.json
  def destroy
    @assignment_status = AssignmentStatus.find(params[:id])
    @assignment_status.destroy

    respond_to do |format|
      format.html { redirect_to assignment_statuses_url }
      format.json { head :no_content }
    end
  end
end
