class PotinsController < ApplicationController
  def new
  end

  def create
    @potin = Potin.new(title: params[:title], description: params[:body], user: User.find_by(first_name: params[:author]))

    if @potin.save
      flash[:notice] = "Ton potin a bien été enregistré"
      redirect_to home_path
    else
      render 'new'
    end
  end
end
