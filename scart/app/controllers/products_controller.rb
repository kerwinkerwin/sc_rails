class ProductsController < ApplicationController
  def new
  end

  def create

  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
    @user = current_user
  end

  def show
    p params
    @product = Product.find(params[:id].to_i)
  end
end
