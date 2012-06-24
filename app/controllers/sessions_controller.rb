class SessionsController < ApplicationController
  def create

    User.create!(:email => "a@a.com", :password => "aaa")
  	user = User.find_by_email(params[:email])

  	if user.authenticate(params[:password])
      
  	else
  	  flash[:error] = "Usuario y/o contrasenia incorrectos"
  	  redirect_to root_path
  	end
  		
  end

  def destroy
  end
end
