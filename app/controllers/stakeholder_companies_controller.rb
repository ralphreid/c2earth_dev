class StakeholderCompaniesController < ApplicationController
  # GET /stakeholder_companies
  # GET /stakeholder_companies.json
  def index
    @stakeholder_companies = StakeholderCompany.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stakeholder_companies }
    end
  end

  # GET /stakeholder_companies/1
  # GET /stakeholder_companies/1.json
  def show
    @stakeholder_company = StakeholderCompany.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @stakeholder_company }
    end
  end

  # GET /stakeholder_companies/new
  # GET /stakeholder_companies/new.json
  def new
    @stakeholder_company = StakeholderCompany.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @stakeholder_company }
    end
  end

  # GET /stakeholder_companies/1/edit
  def edit
    @stakeholder_company = StakeholderCompany.find(params[:id])
  end

  # POST /stakeholder_companies
  # POST /stakeholder_companies.json
  def create
    @stakeholder_company = StakeholderCompany.new(params[:stakeholder_company])

    respond_to do |format|
      if @stakeholder_company.save
        format.html { redirect_to @stakeholder_company, notice: 'Stakeholder company was successfully created.' }
        format.json { render json: @stakeholder_company, status: :created, location: @stakeholder_company }
      else
        format.html { render action: "new" }
        format.json { render json: @stakeholder_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /stakeholder_companies/1
  # PUT /stakeholder_companies/1.json
  def update
    @stakeholder_company = StakeholderCompany.find(params[:id])

    respond_to do |format|
      if @stakeholder_company.update_attributes(params[:stakeholder_company])
        format.html { redirect_to @stakeholder_company, notice: 'Stakeholder company was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @stakeholder_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stakeholder_companies/1
  # DELETE /stakeholder_companies/1.json
  def destroy
    @stakeholder_company = StakeholderCompany.find(params[:id])
    @stakeholder_company.destroy

    respond_to do |format|
      format.html { redirect_to stakeholder_companies_url }
      format.json { head :no_content }
    end
  end
end
