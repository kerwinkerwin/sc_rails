require 'rails_helper'

RSpec.describe ProductsController, type: :controller do

  describe "GET #show" do
    let(:product){double("Product_double", id:1, cool:false)}
    render_views

    before (:each) do
      allow(Product).to receive(:find).with(product.id.to_i).and_return(product)
      get :show, id:product.id.to_i

    end
    it"returns http status 200 ok" do
      expect(response).to have_http_status(:success)
    end
    it "returns product with specified id" do
      expect(assigns(:product)).to be(product)
    end
    it "renders the show view" do
      expect(response).to render_template(:show)
    end



  end
  # describe "GET #new" do
  #   it "returns http success" do
  #     get :new
  #     expect(response).to have_http_status(:success)
  #   end
  # end
  #
  # describe "GET #create" do
  #   it "returns http success" do
  #     get :create
  #     expect(response).to have_http_status(:success)
  #   end
  # end
  #
  # describe "GET #update" do
  #   it "returns http success" do
  #     get :update
  #     expect(response).to have_http_status(:success)
  #   end
  # end
  #
  # describe "GET #edit" do
  #   it "returns http success" do
  #     get :edit
  #     expect(response).to have_http_status(:success)
  #   end
  # end
  #
  # describe "GET #destroy" do
  #   it "returns http success" do
  #     get :destroy
  #     expect(response).to have_http_status(:success)
  #   end
  # end
  #
  # describe "GET #index" do
  #   it "returns http success" do
  #     get :index
  #     expect(response).to have_http_status(:success)
  #   end
  # end
  #
  # describe "GET #show" do
  #   it "returns http success" do
  #     get :show
  #     expect(response).to have_http_status(:success)
  #   end
  # end



end
