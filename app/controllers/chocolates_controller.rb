class ChocolatesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_chocolate, only: [:show, :edit, :update, :destroy]

  def index
    @chocolates = Chocolate.all
    respond_with(@chocolates)
  end

  def show
    respond_with(@chocolate)
  end

  def new
    @chocolate = Chocolate.new
    respond_with(@chocolate)
  end

  def edit
  end

  def create
    @chocolate = Chocolate.new(chocolate_params)
    @chocolate.save
    respond_with(@chocolate)
  end

  def update
    @chocolate.update(chocolate_params)
    respond_with(@chocolate)
  end

  def destroy
    @chocolate.destroy
    respond_with(@chocolate)
  end

  private
    def set_chocolate
      @chocolate = Chocolate.find(params[:id])
    end

    def chocolate_params
      params.require(:chocolate).permit(:name, :photo_url)
    end
end
