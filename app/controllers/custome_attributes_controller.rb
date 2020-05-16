class CustomeAttributesController < ApplicationController
  before_action :set_custome_attribute, only: [:show, :edit, :update, :destroy]

  # GET /custome_attributes
  # GET /custome_attributes.json
  def index
    @custome_attributes = CustomeAttribute.all
  end

  # GET /custome_attributes/1
  # GET /custome_attributes/1.json
  def show
  end

  # GET /custome_attributes/new
  def new
    @custome_attribute = CustomeAttribute.new
  end

  # GET /custome_attributes/1/edit
  def edit
  end

  # POST /custome_attributes
  # POST /custome_attributes.json
  def create
    @custome_attribute = CustomeAttribute.new(custome_attribute_params)

    respond_to do |format|
      if @custome_attribute.save
        format.html { redirect_to @custome_attribute, notice: 'Custome attribute was successfully created.' }
        format.json { render :show, status: :created, location: @custome_attribute }
      else
        format.html { render :new }
        format.json { render json: @custome_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /custome_attributes/1
  # PATCH/PUT /custome_attributes/1.json
  def update
    respond_to do |format|
      if @custome_attribute.update(custome_attribute_params)
        format.html { redirect_to @custome_attribute, notice: 'Custome attribute was successfully updated.' }
        format.json { render :show, status: :ok, location: @custome_attribute }
      else
        format.html { render :edit }
        format.json { render json: @custome_attribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custome_attributes/1
  # DELETE /custome_attributes/1.json
  def destroy
    @custome_attribute.destroy
    respond_to do |format|
      format.html { redirect_to custome_attributes_url, notice: 'Custome attribute was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_custome_attribute
      @custome_attribute = CustomeAttribute.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def custome_attribute_params
      params.require(:custome_attribute).permit(:field_name, :field_type, :required, :project_id)
    end
end
