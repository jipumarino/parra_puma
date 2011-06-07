class RegalosController < ApplicationController
  def index
    @regalos = Regalo.includes(:productos)
  end

  def update
    regalo = Regalo.find params[:id]
    if regalo.reservado?
      render :text => 'Error: ya reservado', :status => 403 and return
    end
    if regalo.update_attributes params[:regalo] and regalo.reservado?
      render :text => 'OK', :status => 200
    else
      render :text => 'Error: campo vacio', :status => 400 
    end
  end

end
