class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def remote_ip
    if Rails.env.production?
		  request.remote_ip
		else
		  # Net::HTTP.get(URI.parse('http://checkip.amazonaws.com/')).squish
		  "69.128.144.113"
		end
  end

  def user_location
  	Geocoder.search(remote_ip)
  end



end
