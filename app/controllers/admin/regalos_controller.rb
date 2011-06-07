class Admin::RegalosController < ApplicationController
  def index
    @regalos = Regalo.all
  end

  def create
    @regalo = Regalo
  end

  def edit
    @regalo = Regalo.find params[:id]
  end
  
  def update
    @regalo = Regalo.find params[:id]
    @regalo.update_attributes params[:regalo]
    redirect_to :action => :index
  end

  def new
    @regalo = Regalo.new
  end

  def create
    Regalo.create params[:regalo]
    redirect_to :action => :index
  end

  def destroy
    Regalo.find(params[:id]).destroy
    redirect_to :action => :index
  end
end
