class RegistrationController < ApplicationController
  def new
  	
  end

  def create
  	user = User.new
    user.name = params["user"][:name]
    user.email = params["user"][:email]
    user.password = params["user"][:password]
	user.save
	redirect_to "/gossips"
  end
end
