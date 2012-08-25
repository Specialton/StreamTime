class ShirtSizesController < ApplicationController
  # GET /shirt_sizes
  # GET /shirt_sizes.json
  def index
    @shirt_sizes = ShirtSize.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @shirt_sizes }
    end
  end

  # GET /shirt_sizes/1
  # GET /shirt_sizes/1.json
  def show
    @shirt_size = ShirtSize.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @shirt_size }
    end
  end

  # GET /shirt_sizes/new
  # GET /shirt_sizes/new.json
  def new
    @shirt_size = ShirtSize.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @shirt_size }
    end
  end

  # GET /shirt_sizes/1/edit
  def edit
    @shirt_size = ShirtSize.find(params[:id])
  end

  # POST /shirt_sizes
  # POST /shirt_sizes.json
  def create
    @shirt_size = ShirtSize.new(params[:shirt_size])

    respond_to do |format|
      if @shirt_size.save
        format.html { redirect_to @shirt_size, notice: 'Shirt size was successfully created.' }
        format.json { render json: @shirt_size, status: :created, location: @shirt_size }
      else
        format.html { render action: "new" }
        format.json { render json: @shirt_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /shirt_sizes/1
  # PUT /shirt_sizes/1.json
  def update
    @shirt_size = ShirtSize.find(params[:id])

    respond_to do |format|
      if @shirt_size.update_attributes(params[:shirt_size])
        format.html { redirect_to @shirt_size, notice: 'Shirt size was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @shirt_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shirt_sizes/1
  # DELETE /shirt_sizes/1.json
  def destroy
    @shirt_size = ShirtSize.find(params[:id])
    @shirt_size.destroy

    respond_to do |format|
      format.html { redirect_to shirt_sizes_url }
      format.json { head :no_content }
    end
  end
end
