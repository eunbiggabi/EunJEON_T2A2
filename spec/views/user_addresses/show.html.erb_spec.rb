require 'rails_helper'

RSpec.describe "user_addresses/show", type: :view do
  before(:each) do
    @user_address = assign(:user_address, UserAddress.create!(
      firstname: "Firstname",
      lastname: "Lastname",
      address_line: "Address Line",
      city: "City",
      postcode: "Postcode",
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Firstname/)
    expect(rendered).to match(/Lastname/)
    expect(rendered).to match(/Address Line/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/Postcode/)
    expect(rendered).to match(//)
  end
end
