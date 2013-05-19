require 'spec_helper'

describe "oc_members/show" do
  before(:each) do
    @oc_member = assign(:oc_member, stub_model(OcMember,
      :first_names => "First Names",
      :last_names => "Last Names",
      :position => "Position",
      :address1 => "Address1",
      :address2 => "Address2",
      :city => "City",
      :state => "State",
      :phone => "Phone",
      :fax => "Fax",
      :cellphone => "Cellphone",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/First Names/)
    rendered.should match(/Last Names/)
    rendered.should match(/Position/)
    rendered.should match(/Address1/)
    rendered.should match(/Address2/)
    rendered.should match(/City/)
    rendered.should match(/State/)
    rendered.should match(/Phone/)
    rendered.should match(/Fax/)
    rendered.should match(/Cellphone/)
    rendered.should match(/Email/)
  end
end
