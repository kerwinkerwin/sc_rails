class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.decimal :sum
      t.belongs_to :order, index: true
      t.belongs_to :product, index: true
      t.timestamps null: false
    end
  end
end
