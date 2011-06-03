class RegalosController < ApplicationController
  def index
    @regalos = Regalo.all
  end

  def update
    # debugger
    regalo = Regalo.find params[:id]
    if regalo.update_attributes params[:regalo]
      render :text => 'OK', :status => 200
    else
      render :text => 'Error', :status => 500
    end
  end
end
