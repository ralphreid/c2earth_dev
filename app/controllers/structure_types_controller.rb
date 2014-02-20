class StructureTypesController < ApplicationController
  # GET /structure_types
  # GET /structure_types.json
  def index
    @structure_types = StructureType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @structure_types }
    end
  end

  # GET /structure_types/1
  # GET /structure_types/1.json
  def show
    @structure_type = StructureType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @structure_type }
    end
  end

  # GET /structure_types/new
  # GET /structure_types/new.json
  def new
    @structure_type = StructureType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @structure_type }
    end
  end

  # GET /structure_types/1/edit
  def edit
    @structure_type = StructureType.find(params[:id])
  end

  # POST /structure_types
  # POST /structure_types.json
  def create
    @structure_type = StructureType.new(params[:structure_type])

    respond_to do |format|
      if @structure_type.save
        format.html { redirect_to @structure_type, notice: 'Structure type was successfully created.' }
        format.json { render json: @structure_type, status: :created, location: @structure_type }
      else
        format.html { render action: "new" }
        format.json { render json: @structure_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /structure_types/1
  # PUT /structure_types/1.json
  def update
    @structure_type = StructureType.find(params[:id])

    respond_to do |format|
      if @structure_type.update_attributes(params[:structure_type])
        format.html { redirect_to @structure_type, notice: 'Structure type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @structure_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /structure_types/1
  # DELETE /structure_types/1.json
  def destroy
    @structure_type = StructureType.find(params[:id])
    @structure_type.destroy

    respond_to do |format|
      format.html { redirect_to structure_types_url }
      format.json { head :no_content }
    end
  end
end
