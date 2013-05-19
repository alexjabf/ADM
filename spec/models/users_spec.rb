require File.dirname(__FILE__) + '/../spec_helper'

describe Users do
  def new_users(attributes = {})
    attributes[:username] ||= 'foo'
    attributes[:email] ||= 'foo@example.com'
    attributes[:password] ||= 'abc123'
    attributes[:password_confirmation] ||= attributes[:password]
    Users.new(attributes)
  end

  before(:each) do
    Users.delete_all
  end

  it "should be valid" do
    new_users.should be_valid
  end

  it "should require username" do
    new_users(:username => '').should have(1).error_on(:username)
  end

  it "should require password" do
    new_users(:password => '').should have(1).error_on(:password)
  end

  it "should require well formed email" do
    new_users(:email => 'foo@bar@example.com').should have(1).error_on(:email)
  end

  it "should validate uniqueness of email" do
    new_users(:email => 'bar@example.com').save!
    new_users(:email => 'bar@example.com').should have(1).error_on(:email)
  end

  it "should validate uniqueness of username" do
    new_users(:username => 'uniquename').save!
    new_users(:username => 'uniquename').should have(1).error_on(:username)
  end

  it "should not allow odd characters in username" do
    new_users(:username => 'odd ^&(@)').should have(1).error_on(:username)
  end

  it "should validate password is longer than 3 characters" do
    new_users(:password => 'bad').should have(1).error_on(:password)
  end

  it "should require matching password confirmation" do
    new_users(:password_confirmation => 'nonmatching').should have(1).error_on(:password)
  end

  it "should generate password hash and salt on create" do
    users = new_users
    users.save!
    users.password_hash.should_not be_nil
    users.password_salt.should_not be_nil
  end

  it "should authenticate by username" do
    users = new_users(:username => 'foobar', :password => 'secret')
    users.save!
    Users.authenticate('foobar', 'secret').should == users
  end

  it "should authenticate by email" do
    users = new_users(:email => 'foo@bar.com', :password => 'secret')
    users.save!
    Users.authenticate('foo@bar.com', 'secret').should == users
  end

  it "should not authenticate bad username" do
    Users.authenticate('nonexisting', 'secret').should be_nil
  end

  it "should not authenticate bad password" do
    new_users(:username => 'foobar', :password => 'secret').save!
    Users.authenticate('foobar', 'badpassword').should be_nil
  end
end
