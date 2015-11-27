# class UsersController <ApplicationController
#
# def index
#   @users = User.all
#     # @hash = Gmaps4rails.build_markers(@users) do |user, marker|
#     # marker.lat user.latitude
#     # marker.lng user.longitude
# end

class UsersController < ApplicationController
  def home
    if logged_in?
    @listings = Item.where(user_id: current_user.id)
    # @borrowed = Item.where(borrower_id: current_user.id, loan_status: 'onloan')
    render :user_profile
  else
    redirect_to user_path
  end
  end

  def edit
    user = current_user
    render :edit_profile
  end

  def update
    user = current_user
    user.name = params[:name]
    user.email = params[:email]
    user.password = params[:password]
    user.profile_avatar = params[:profile_avatar]
    user.postcode = params[:postcode]
    user.save
    redirect_to '/user'
  end

  def new
    if logged_in?
      redirect_to user_path
    else
      render :new_profile
    end

  end

  def create
    user = User.new
    user.name = params[:name]
    user.email = params[:email]
    user.password = params[:password]
    user.profile_avatar = params[:profile_avatar]
    user.postcode = params[:postcode]
    user.save

    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to "/"
    else
      render :login
    end
  end

  def destroy
    # user = current_user.id
    # raise 'Got the user id'
    # user.destroy
    # session[:user_id] = nil
    # redirect_to '/login'
  end


end
