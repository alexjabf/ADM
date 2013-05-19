require File.dirname(__FILE__) + '/../spec_helper'

describe SessionsController do
  fixtures :all
  render_views

  it "new action should render new template" do
    get :new
    response.should render_template(:new)
  end

  it "create action should render new template when authentication is invalid" do
    Users.stubs(:authenticate).returns(nil)
    post :create
    response.should render_template(:new)
    session['users_id'].should be_nil
  end

  it "create action should redirect when authentication is valid" do
    Users.stubs(:authenticate).returns(Users.first)
    post :create
    response.should redirect_to(root_url)
    session['users_id'].should == Users.first.id
  end
end
