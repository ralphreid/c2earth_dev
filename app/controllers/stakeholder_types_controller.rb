class StakeholderTypesController < ApplicationController
  # GET /stakeholder_types
  # GET /stakeholder_types.json
  def index
    @stakeholder_types = StakeholderType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stakeholder_types }
    end
  end

  # GET /stakeholder_types/1
  # GET /stakeholder_types/1.json
  def show
    @stakeholder_type = StakeholderType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @stakeholder_type }
    end
  end

  # GET /stakeholder_types/new
  # GET /stakeholder_types/new.json
  def new
    @stakeholder_type = StakeholderType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @stakeholder_type }
    end
  end

  # GET /stakeholder_types/1/edit
  def edit
    @stakeholder_type = StakeholderType.find(params[:id])
  end

  # POST /stakeholder_types
  # POST /stakeholder_types.json
  def create
    @stakeholder_type = StakeholderType.new(params[:stakeholder_type])

    respond_to do |format|
      if @stakeholder_type.save
        format.html { redirect_to @stakeholder_type, notice: 'Stakeholder type was successfully created.' }
        format.json { render json: @stakeholder_type, status: :created, location: @stakeholder_type }
      else
        format.html { render action: "new" }
        format.json { render json: @stakeholder_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /stakeholder_types/1
  # PUT /stakeholder_types/1.json
  def update
    @stakeholder_type = StakeholderType.find(params[:id])

    respond_to do |format|
      if @stakeholder_type.update_attributes(params[:stakeholder_type])
        format.html { redirect_to @stakeholder_type, notice: 'Stakeholder type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @stakeholder_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stakeholder_types/1
  # DELETE /stakeholder_types/1.json
  def destroy
    @stakeholder_type = StakeholderType.find(params[:id])
    @stakeholder_type.destroy

    respond_to do |format|
      format.html { redirect_to stakeholder_types_url }
      format.json { head :no_content }
    end
  end
end
