class StakeholderCompanyTypesController < ApplicationController
  # GET /stakeholder_company_types
  # GET /stakeholder_company_types.json
  def index
    @stakeholder_company_types = StakeholderCompanyType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stakeholder_company_types }
    end
  end

  # GET /stakeholder_company_types/1
  # GET /stakeholder_company_types/1.json
  def show
    @stakeholder_company_type = StakeholderCompanyType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @stakeholder_company_type }
    end
  end

  # GET /stakeholder_company_types/new
  # GET /stakeholder_company_types/new.json
  def new
    @stakeholder_company_type = StakeholderCompanyType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @stakeholder_company_type }
    end
  end

  # GET /stakeholder_company_types/1/edit
  def edit
    @stakeholder_company_type = StakeholderCompanyType.find(params[:id])
  end

  # POST /stakeholder_company_types
  # POST /stakeholder_company_types.json
  def create
    @stakeholder_company_type = StakeholderCompanyType.new(params[:stakeholder_company_type])

    respond_to do |format|
      if @stakeholder_company_type.save
        format.html { redirect_to @stakeholder_company_type, notice: 'Stakeholder company type was successfully created.' }
        format.json { render json: @stakeholder_company_type, status: :created, location: @stakeholder_company_type }
      else
        format.html { render action: "new" }
        format.json { render json: @stakeholder_company_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /stakeholder_company_types/1
  # PUT /stakeholder_company_types/1.json
  def update
    @stakeholder_company_type = StakeholderCompanyType.find(params[:id])

    respond_to do |format|
      if @stakeholder_company_type.update_attributes(params[:stakeholder_company_type])
        format.html { redirect_to @stakeholder_company_type, notice: 'Stakeholder company type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @stakeholder_company_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stakeholder_company_types/1
  # DELETE /stakeholder_company_types/1.json
  def destroy
    @stakeholder_company_type = StakeholderCompanyType.find(params[:id])
    @stakeholder_company_type.destroy

    respond_to do |format|
      format.html { redirect_to stakeholder_company_types_url }
      format.json { head :no_content }
    end
  end
end
