require 'spec_helper'

describe "oc_members/index" do
  before(:each) do
    assign(:oc_members, [
      stub_model(OcMember,
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
      ),
      stub_model(OcMember,
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
      )
    ])
  end

  it "renders a list of oc_members" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Names".to_s, :count => 2
    assert_select "tr>td", :text => "Last Names".to_s, :count => 2
    assert_select "tr>td", :text => "Position".to_s, :count => 2
    assert_select "tr>td", :text => "Address1".to_s, :count => 2
    assert_select "tr>td", :text => "Address2".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Fax".to_s, :count => 2
    assert_select "tr>td", :text => "Cellphone".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
