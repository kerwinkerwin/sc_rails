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
    @product =Product.all
  end

  def show
    @product = Product.find(params[:id].to_i)
  end

  def add
    session[:orders] = [params[:id],params[:stock]]
    redirect_to products_show_path(id:params[:id])
  end
end
