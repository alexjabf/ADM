require "spec_helper"

describe OcMembersController do
  describe "routing" do

    it "routes to #index" do
      get("/oc_members").should route_to("oc_members#index")
    end

    it "routes to #new" do
      get("/oc_members/new").should route_to("oc_members#new")
    end

    it "routes to #show" do
      get("/oc_members/1").should route_to("oc_members#show", :id => "1")
    end

    it "routes to #edit" do
      get("/oc_members/1/edit").should route_to("oc_members#edit", :id => "1")
    end

    it "routes to #create" do
      post("/oc_members").should route_to("oc_members#create")
    end

    it "routes to #update" do
      put("/oc_members/1").should route_to("oc_members#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/oc_members/1").should route_to("oc_members#destroy", :id => "1")
    end

  end
end
