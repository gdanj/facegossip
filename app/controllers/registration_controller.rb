class RegistrationController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.create name:params[:name], email:params[:email], password:params[:password]
    redirect_to "/registration/login"
  end


  def check

    @current_user = User.where(email: params[:email], password: params[:password]).first

    if @current_user

      flash[:info] = "Bienvenue #{@current_user.name} !"
      @current_user.id = User.last.id + 1


      redirect_to "/gossips"

    else

      flash[:info] = "Échec de la connexion"

      redirect_to "/registration/login"

    end

  end
end
