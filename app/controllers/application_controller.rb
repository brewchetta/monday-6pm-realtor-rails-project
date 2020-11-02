class ApplicationController < ActionController::Base

  def index
    @properties = Property.all
  end

end
