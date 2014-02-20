class FaultsController < ApplicationController
  # GET /faults
  # GET /faults.json
  def index
    @faults = Fault.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @faults }
    end
  end

  # GET /faults/1
  # GET /faults/1.json
  def show
    @fault = Fault.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fault }
    end
  end

  # GET /faults/new
  # GET /faults/new.json
  def new
    @fault = Fault.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fault }
    end
  end

  # GET /faults/1/edit
  def edit
    @fault = Fault.find(params[:id])
  end

  # POST /faults
  # POST /faults.json
  def create
    @fault = Fault.new(params[:fault])

    respond_to do |format|
      if @fault.save
        format.html { redirect_to @fault, notice: 'Fault was successfully created.' }
        format.json { render json: @fault, status: :created, location: @fault }
      else
        format.html { render action: "new" }
        format.json { render json: @fault.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /faults/1
  # PUT /faults/1.json
  def update
    @fault = Fault.find(params[:id])

    respond_to do |format|
      if @fault.update_attributes(params[:fault])
        format.html { redirect_to @fault, notice: 'Fault was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fault.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /faults/1
  # DELETE /faults/1.json
  def destroy
    @fault = Fault.find(params[:id])
    @fault.destroy

    respond_to do |format|
      format.html { redirect_to faults_url }
      format.json { head :no_content }
    end
  end
end
