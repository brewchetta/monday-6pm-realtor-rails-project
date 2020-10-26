class PropertiesController < ApplicationController

  def index
    @realtor = Realtor.find(params[:realtor_id])
    @properties = @realtor.properties
  end

  def new
    @realtor = Realtor.find(params[:realtor_id])
    @property = Property.new
  end

  def create
    @realtor = Realtor.find(params[:realtor_id])
    @property = Property.new(property_params)
    @property.realtor = @realtor
    @property.save
    redirect_to realtor_properties_path(@realtor)
  end

  private

  def property_params
    params.require(:property).permit(:bathrooms, :rooms, :address, :property_value)
  end

end
