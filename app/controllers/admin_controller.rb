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
end
