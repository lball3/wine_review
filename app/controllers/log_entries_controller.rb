class LogEntriesController < ApplicationController
  before_action :set_log_entry, only: [:show, :edit, :update, :destroy]

  def index
    @log_entries = LogEntry.all
  end

  def show
  end

  def new
    @wine = Wine.find(params[:wine_id])
    @log_entry = @wine.log_entries.new
  end

  # def edit
  # end

  def create
    @wine = Wine.find(params[:wine_id])
    @log_entry = @wine.log_entries.new(log_entry_params)
    if @log_entry.save
      flash[:success] = 'Log entry was successfully created.'
      redirect_to wine_path @wine
    else
      flash[:error] = 'Could not save log entry.'
      redirect_to wine_path @wine
    end
  end

  # def update
  #   if @log_entry.update(log_entry_params)
  #     redirect_to @log_entry, notice: 'Log entry was successfully updated.'
  #   else
  #     render :edit
  #   end
  # end

  # def destroy
  #   @log_entry.destroy
  #   redirect_to log_entries_url
  # end

  private
    def set_log_entry
      @log_entry = LogEntry.find(params[:id])
    end

    def log_entry_params
      params.require(:log_entry).permit(:name, :rating, :location, :tasted_on)
    end
end