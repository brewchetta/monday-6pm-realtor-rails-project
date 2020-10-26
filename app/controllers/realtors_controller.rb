class RealtorsController < ApplicationController

  def index
    @realtors = Realtor.all
  end

  def show
    @realtor = Realtor.find(params[:id])
  end

  def new
    @realtor = Realtor.new
  end

  def create
    @realtor = Realtor.create(realtor_params)
    redirect_to realtor_path(@realtor)
  end

  private

  def realtor_params
    params.require(:realtor).permit(:name, :company, :phone_number)
  end

end
