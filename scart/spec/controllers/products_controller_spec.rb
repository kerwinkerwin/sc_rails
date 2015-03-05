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
end
