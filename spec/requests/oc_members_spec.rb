require 'spec_helper'

describe "OcMembers" do
  describe "GET /oc_members" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get oc_members_path
      response.status.should be(200)
    end
  end
end
