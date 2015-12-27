class WinesController < ApplicationController
  before_action :set_wine, only: [:show, :edit, :update, :destroy]

  def index
    @wines = Wine.order(:created_at).page params[:page]
  end

  def show
  end

  def new
    @wine = Wine.new
  end

  def edit
  end

  def create
    @wine = Wine.new(wine_params)
    if @wine.save
      flash[:success] = 'Wine was successfully created.'
      redirect_to @wine
    else
      render :new
    end
  end

  def update
    if @wine.update(wine_params)
      flash[:success] = 'Wine was successfully updated.'
      redirect_to @wine
    else
      render :edit
    end
  end

  def destroy
    @wine.destroy
    flash[:success] = 'Wine was successfully deleted.'
    redirect_to wines_url
  end

  private
    def set_wine
      @wine = Wine.find(params[:id])
    end

    def wine_params
      params.require(:wine).permit(:name, :year, :winery, :country, :varietal)
    end
end