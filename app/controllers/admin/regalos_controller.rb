class Admin::RegalosController < ApplicationController
  before_filter :authentication_check

  def index
    @regalos = Regalo.all
  end

  def create
    @regalo = Regalo
  end

  def edit
    @regalo = Regalo.find params[:id], :include => :productos
    10.times { @regalo.productos.build }  
  end
  
  def update
    @regalo = Regalo.find params[:id]
    @regalo.update_attributes params[:regalo]
    redirect_to :action => :index
  end

  def new
    @regalo = Regalo.new
    10.times { @regalo.productos.build }  
  end

  def create
    Regalo.create params[:regalo]
    redirect_to :action => :index
  end

  def destroy
    Regalo.find(params[:id]).destroy
    redirect_to :action => :index
  end

  private
  def authentication_check
    authenticate_or_request_with_http_basic do |user, password|
      user == 'parrapuma' && password == 'joloijolito'
    end
  end
end
