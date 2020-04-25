class BarsController < ApplicationController
  def index
    @bars = Bar.all
  end

  def show
    @bar = Bar.find(params[:id])
  end

  def new
    @bar = Bar.new
  end

  def create
    @bar = Bar.new(bar_params)
    @bar.save
    if @bar.save
      redirect_to bar_path(@bar)
    else
      render :new
    end
  end

  def destroy
    @bar = Bar.find(params[:id])
    @bar.destroy
    redirect_to bars_path, notice: "#{@bar.name} was successfully deleted"
  end

  private

  def bar_params
    params.require(:bar).permit(:name, :address, :rating, :description)
  end
end
