class Ip < ActiveRecord::Base
  attr_accessible :ip, :city, :state, :country, :zipcode
end
