class SessionsController < ApplicationController
  def new
  end

  def create

    # email = params[:email]
    # password = params[:password]

    @user = User.find_by email: params[:email]
    if @user && @user.authenticate( params[:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash.now[:alert] = "Something is wrong with your email or password"
      render :new
    end
  end

  def delete
    session.delete :user_id
    redirect_to root_path
  end
end
