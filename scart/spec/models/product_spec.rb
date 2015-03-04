require 'rails_helper'

RSpec.describe Product, type: :model do


    describe "Product" do
      before(:each) do
        @product = Product.create(name:"bun",description:"bangbang",price:10.00,stock:2)
      end
      it "exists" do
        expect(@product).to be_instance_of(Product)
      end
      it "has a price" do
      end

        describe "Name" do
          before (:each) do
            @cat1 = Product.create(name:"gun",description:"bangbang",price:10.00,stock:2)
            @cat2 = Product.create(name:"gun",description:"bang",price:10.00,stock:2)
          end
          it "is unique" do
            expect(Product.find_by(id:@cat2.id)).to be_nil
          end
        end

      describe "Price" do
        it "is a decimal" do
          expect(@product.price).to be_a(BigDecimal)
        end
        it "is a string" do
        expect(@product.formatted_price).to be_a(String)
        end
        it "displays with a $" do
          expect(@product.formatted_price).to include("$")
        end
        it "can have a discount applied" do
          expect(@product.discounted_price(20)).to eq(8)
        end
      end
  end
  end
