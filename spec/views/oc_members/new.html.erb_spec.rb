require 'spec_helper'

describe "oc_members/new" do
  before(:each) do
    assign(:oc_member, stub_model(OcMember,
      :first_names => "MyString",
      :last_names => "MyString",
      :position => "MyString",
      :address1 => "MyString",
      :address2 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :phone => "MyString",
      :fax => "MyString",
      :cellphone => "MyString",
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new oc_member form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => oc_members_path, :method => "post" do
      assert_select "input#oc_member_first_names", :name => "oc_member[first_names]"
      assert_select "input#oc_member_last_names", :name => "oc_member[last_names]"
      assert_select "input#oc_member_position", :name => "oc_member[position]"
      assert_select "input#oc_member_address1", :name => "oc_member[address1]"
      assert_select "input#oc_member_address2", :name => "oc_member[address2]"
      assert_select "input#oc_member_city", :name => "oc_member[city]"
      assert_select "input#oc_member_state", :name => "oc_member[state]"
      assert_select "input#oc_member_phone", :name => "oc_member[phone]"
      assert_select "input#oc_member_fax", :name => "oc_member[fax]"
      assert_select "input#oc_member_cellphone", :name => "oc_member[cellphone]"
      assert_select "input#oc_member_email", :name => "oc_member[email]"
    end
  end
end
