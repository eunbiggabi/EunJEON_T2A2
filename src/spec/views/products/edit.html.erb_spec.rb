require 'rails_helper'

RSpec.describe "products/edit", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      name: "MyString",
      description: "MyText",
      discount_price: 1.5,
      original_price: 1.5,
      user_id: 1,
      category_id: 1,
      inventory_id: 1
    ))
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(@product), "post" do

      assert_select "input[name=?]", "product[name]"

      assert_select "textarea[name=?]", "product[description]"

      assert_select "input[name=?]", "product[discount_price]"

      assert_select "input[name=?]", "product[original_price]"

      assert_select "input[name=?]", "product[user_id]"

      assert_select "input[name=?]", "product[category_id]"

      assert_select "input[name=?]", "product[inventory_id]"
    end
  end
end
