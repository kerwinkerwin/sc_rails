class WelcomeController < ApplicationController

  def index
    if !user_signed_in?
      redirect_to new_user_session_path
    else
      redirect_to products_index_path
    end
  end
end
