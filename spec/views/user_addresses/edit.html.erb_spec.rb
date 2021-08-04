require 'rails_helper'

RSpec.describe "user_addresses/edit", type: :view do
  before(:each) do
    @user_address = assign(:user_address, UserAddress.create!(
      firstname: "MyString",
      lastname: "MyString",
      address_line: "MyString",
      city: "MyString",
      postcode: "MyString",
      user: nil
    ))
  end

  it "renders the edit user_address form" do
    render

    assert_select "form[action=?][method=?]", user_address_path(@user_address), "post" do

      assert_select "input[name=?]", "user_address[firstname]"

      assert_select "input[name=?]", "user_address[lastname]"

      assert_select "input[name=?]", "user_address[address_line]"

      assert_select "input[name=?]", "user_address[city]"

      assert_select "input[name=?]", "user_address[postcode]"

      assert_select "input[name=?]", "user_address[user_id]"
    end
  end
end
