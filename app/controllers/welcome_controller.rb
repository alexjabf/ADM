class WelcomeController < ApplicationController
  def index
    @ip  = Ip.new
    @ip.ip = request.ip
    @ip.host = request.host
    @ip.port = request.port
    @ip.city = request.location.city
    @ip.state = request.location.state
    @ip.country = request.location.country
    @ip.address = request.location.address
    #@ip.zipcode = request.location.address
    #@ip.time_zone = request
    @ip.latitude = request.location.latitude
    @ip.longitude = request.location.longitude
    @ip.country_code = request.location.country_code

    #@ip.region_code = request.location.region_code
    #@result = Geocoder.search(@ip.latitude.to_s + ", " +@ip.longitude.to_s )
    @ip.description = Geocoder.search(@ip.latitude.to_s + ", " + @ip.longitude.to_s).to_s
    #@ip.zipcode = @result[0]
    @ip.save
    #@loc=Geocoder.search('100 Spear St, San Francisco, CA').full_address
      #puts loc.lat
      #puts loc.lng
      #puts  result.to_s
      #puts  @ip.ip
      #puts  @ip.host
      #puts  @ip.port
      #puts  @ip.city
      #puts  @ip.state
      #puts  @ip.country
      #puts  @ip.address
      #puts  @ip.latitude
      #puts  @ip.longitude
      #puts  results.city
  end
end
