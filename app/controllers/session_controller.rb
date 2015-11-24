class SessionController < ApplicationController

  def create

    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to "/"
    else
      render :login
    end

    # e = User.new
    # e.email = params[:email]
    # e.password = params[:password]
    # e.save

  end

  # def login
  #   user = User.find_by(email: params[:email])
  #
  #
  # end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end

end
