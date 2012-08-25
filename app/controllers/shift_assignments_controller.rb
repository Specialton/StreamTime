class ShiftAssignmentsController < ApplicationController
  # GET /shift_assignments
  # GET /shift_assignments.json
  def index
    @shift_assignments = ShiftAssignment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shift_assignments }
    end
  end

  # GET /shift_assignments/1
  # GET /shift_assignments/1.json
  def show
    @shift_assignment = ShiftAssignment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @shift_assignment }
    end
  end

  # GET /shift_assignments/new
  # GET /shift_assignments/new.json
  def new
    @shift_assignment = ShiftAssignment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @shift_assignment }
    end
  end

  # GET /shift_assignments/1/edit
  def edit
    @shift_assignment = ShiftAssignment.find(params[:id])
  end

  # POST /shift_assignments
  # POST /shift_assignments.json
  def create
    @shift_assignment = ShiftAssignment.new(params[:shift_assignment])

    respond_to do |format|
      if @shift_assignment.save
        format.html { redirect_to @shift_assignment, notice: 'Shift assignment was successfully created.' }
        format.json { render json: @shift_assignment, status: :created, location: @shift_assignment }
      else
        format.html { render action: "new" }
        format.json { render json: @shift_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /shift_assignments/1
  # PUT /shift_assignments/1.json
  def update
    @shift_assignment = ShiftAssignment.find(params[:id])

    respond_to do |format|
      if @shift_assignment.update_attributes(params[:shift_assignment])
        format.html { redirect_to @shift_assignment, notice: 'Shift assignment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @shift_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shift_assignments/1
  # DELETE /shift_assignments/1.json
  def destroy
    @shift_assignment = ShiftAssignment.find(params[:id])
    @shift_assignment.destroy

    respond_to do |format|
      format.html { redirect_to shift_assignments_url }
      format.json { head :no_content }
    end
  end
end
