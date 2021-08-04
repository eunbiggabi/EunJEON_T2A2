require 'rails_helper'

RSpec.describe "user_addresses/index", type: :view do
  before(:each) do
    assign(:user_addresses, [
      UserAddress.create!(
        firstname: "Firstname",
        lastname: "Lastname",
        address_line: "Address Line",
        city: "City",
        postcode: "Postcode",
        user: nil
      ),
      UserAddress.create!(
        firstname: "Firstname",
        lastname: "Lastname",
        address_line: "Address Line",
        city: "City",
        postcode: "Postcode",
        user: nil
      )
    ])
  end

  it "renders a list of user_addresses" do
    render
    assert_select "tr>td", text: "Firstname".to_s, count: 2
    assert_select "tr>td", text: "Lastname".to_s, count: 2
    assert_select "tr>td", text: "Address Line".to_s, count: 2
    assert_select "tr>td", text: "City".to_s, count: 2
    assert_select "tr>td", text: "Postcode".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
