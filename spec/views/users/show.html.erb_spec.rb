require 'spec_helper'

describe "users/show" do
  before(:each) do
    @user = assign(:user, stub_model(User,
      :firts_name => "Firts Name",
      :last_names => "Last Names",
      :username => "Username",
      :email => "Email",
      :phone => "Phone",
      :password => "Password",
      :password_confirmation => "Password Confirmation"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Firts Name/)
    rendered.should match(/Last Names/)
    rendered.should match(/Username/)
    rendered.should match(/Email/)
    rendered.should match(/Phone/)
    rendered.should match(/Password/)
    rendered.should match(/Password Confirmation/)
  end
end
