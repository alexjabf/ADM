class Ip < ActiveRecord::Base
  attr_accessible :ip, :city, :state, :country, :zipcode
  
  #def to_param
  #  "#{id}-#{city.parameterize}-#{state.parameterize}-#{country.parameterize}"
  #end
  
end
