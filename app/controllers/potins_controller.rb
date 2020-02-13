class PotinsController < ApplicationController
  def new
  end

  def create
    @potin = Potin.new(title: params[:title], description: params[:description], user: User.find_by(first_name: params[:author]))

    if @potin.save
      flash[:notice] = "Ton potin a bien été enregistré"
      redirect_to home_path
    else
      render 'new'
    end
  end

  def create_comment
puts "-" * 60
    puts "yeah"
    puts "-" * 60

  end

  def show
    @potin = Potin.find(params[:id])
    @id = params[:id]
  end

  def edit
    @potin = Potin.find(params[:id])
  end

  def update
    @potin = Potin.find(params[:id])
    potin_params = params.permit(:title, :description, :author)
    potin_params[:user] = User.find_by(first_name: params[:author])
    potin_params.slice!(:title, :description, :user)

    if @potin.update(potin_params)
      redirect_to @potin
    else
      render :edit
    end
  end

  def destroy
    @potin = Potin.find(params[:id])
    @potin.destroy
    flash[:notice] = "Ton potin a bien été supprimé"
    redirect_to home_path

  end
end
