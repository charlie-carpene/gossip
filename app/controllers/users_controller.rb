class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], origin: params[:origin], age: params[:age], description: params[:description], password: params[:password])

    if @user.save
      flash[:notice] = "Ton compte a bien été créé"
      redirect_to home_path
    else
      @fail = true
      render 'new'
    end
  end

end
