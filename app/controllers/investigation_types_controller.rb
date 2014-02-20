class InvestigationTypesController < ApplicationController
  # GET /investigation_types
  # GET /investigation_types.json
  def index
    @investigation_types = InvestigationType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @investigation_types }
    end
  end

  # GET /investigation_types/1
  # GET /investigation_types/1.json
  def show
    @investigation_type = InvestigationType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @investigation_type }
    end
  end

  # GET /investigation_types/new
  # GET /investigation_types/new.json
  def new
    @investigation_type = InvestigationType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @investigation_type }
    end
  end

  # GET /investigation_types/1/edit
  def edit
    @investigation_type = InvestigationType.find(params[:id])
  end

  # POST /investigation_types
  # POST /investigation_types.json
  def create
    @investigation_type = InvestigationType.new(params[:investigation_type])

    respond_to do |format|
      if @investigation_type.save
        format.html { redirect_to @investigation_type, notice: 'Investigation type was successfully created.' }
        format.json { render json: @investigation_type, status: :created, location: @investigation_type }
      else
        format.html { render action: "new" }
        format.json { render json: @investigation_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /investigation_types/1
  # PUT /investigation_types/1.json
  def update
    @investigation_type = InvestigationType.find(params[:id])

    respond_to do |format|
      if @investigation_type.update_attributes(params[:investigation_type])
        format.html { redirect_to @investigation_type, notice: 'Investigation type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @investigation_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /investigation_types/1
  # DELETE /investigation_types/1.json
  def destroy
    @investigation_type = InvestigationType.find(params[:id])
    @investigation_type.destroy

    respond_to do |format|
      format.html { redirect_to investigation_types_url }
      format.json { head :no_content }
    end
  end
end
