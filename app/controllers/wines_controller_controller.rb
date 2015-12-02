class WinesControllerController < ApplicationController
  def index
      @wines = Wine.find(:all)
      
      respond_to do |format|
          format.html #index.html.erb
      end
  end

  def show
      @wines = Wine.find(params[:name])
      
      respond_to do |format|
          format.html #index.html.erb
      end
    end
