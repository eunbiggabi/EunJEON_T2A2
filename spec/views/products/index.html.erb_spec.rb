require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        name: "Name",
        description: "MyText",
        discount_price: 2.5,
        original_price: 3.5,
        user_id: 4,
        category_id: 5,
        inventory_id: 6
      ),
      Product.create!(
        name: "Name",
        description: "MyText",
        discount_price: 2.5,
        original_price: 3.5,
        user_id: 4,
        category_id: 5,
        inventory_id: 6
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: 2.5.to_s, count: 2
    assert_select "tr>td", text: 3.5.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: 5.to_s, count: 2
    assert_select "tr>td", text: 6.to_s, count: 2
  end
end
