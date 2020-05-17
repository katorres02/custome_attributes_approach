class AttributeOptionsController < ApplicationController
  before_action :set_attribute_option, only: [:show, :edit, :update, :destroy]
  before_action :set_selectable_custome_attributes, only: [:new, :edit]

  # GET /attribute_options
  # GET /attribute_options.json
  def index
    @attribute_options = AttributeOption.all
  end

  # GET /attribute_options/1
  # GET /attribute_options/1.json
  def show
  end

  # GET /attribute_options/new
  def new
    @attribute_option = AttributeOption.new
  end

  # GET /attribute_options/1/edit
  def edit
  end

  # POST /attribute_options
  # POST /attribute_options.json
  def create
    @attribute_option = AttributeOption.new(attribute_option_params)

    respond_to do |format|
      if @attribute_option.save
        format.html { redirect_to @attribute_option, notice: 'Attribute option was successfully created.' }
        format.json { render :show, status: :created, location: @attribute_option }
      else
        format.html { render :new }
        format.json { render json: @attribute_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attribute_options/1
  # PATCH/PUT /attribute_options/1.json
  def update
    respond_to do |format|
      if @attribute_option.update(attribute_option_params)
        format.html { redirect_to @attribute_option, notice: 'Attribute option was successfully updated.' }
        format.json { render :show, status: :ok, location: @attribute_option }
      else
        format.html { render :edit }
        format.json { render json: @attribute_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attribute_options/1
  # DELETE /attribute_options/1.json
  def destroy
    @attribute_option.destroy
    respond_to do |format|
      format.html { redirect_to attribute_options_url, notice: 'Attribute option was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_selectable_custome_attributes
      @selectable_custome_attributes = CustomeAttribute.where(field_type: 'SELECT').pluck(:field_name, :id)
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_attribute_option
      @attribute_option = AttributeOption.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def attribute_option_params
      params.require(:attribute_option).permit(:name, :custome_attribute_id)
    end
end
