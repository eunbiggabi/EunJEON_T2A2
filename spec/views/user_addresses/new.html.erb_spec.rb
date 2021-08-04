require 'rails_helper'

RSpec.describe "user_addresses/new", type: :view do
  before(:each) do
    assign(:user_address, UserAddress.new(
      firstname: "MyString",
      lastname: "MyString",
      address_line: "MyString",
      city: "MyString",
      postcode: "MyString",
      user: nil
    ))
  end

  it "renders new user_address form" do
    render

    assert_select "form[action=?][method=?]", user_addresses_path, "post" do

      assert_select "input[name=?]", "user_address[firstname]"

      assert_select "input[name=?]", "user_address[lastname]"

      assert_select "input[name=?]", "user_address[address_line]"

      assert_select "input[name=?]", "user_address[city]"

      assert_select "input[name=?]", "user_address[postcode]"

      assert_select "input[name=?]", "user_address[user_id]"
    end
  end
end
