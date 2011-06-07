class RegalosController < ApplicationController
  def index
    @regalos = Regalo.includes(:productos)
  end

  def update
    regalo = Regalo.find params[:id]
    if regalo.update_attributes params[:regalo]
      render :text => 'OK', :status => 200
    else
      if regalo.reservado?
        render :text => 'Error: ya reservado', :status => 403 
      else
        render :text => 'Error: campo vacio', :status => 400 
      end
    end
  end
end
