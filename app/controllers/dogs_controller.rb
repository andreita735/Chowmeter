class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
    
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new
    @dog.name = params[:name]
    @dog.dob = params[:dob]
    @dog.breed = params[:breed]
    @dog.consumption_per_day = params[:consumption_per_day]
    @dog.user_id = params[:user_id]
    @dog.picture_url = params[:picture_url]

    if @dog.save
      redirect_to "/dogs", :notice => "Dog created successfully."
    else
      render 'new'
    end
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def update
    @dog = Dog.find(params[:id])

    @dog.name = params[:name]
    @dog.dob = params[:dob]
    @dog.breed = params[:breed]
    @dog.consumption_per_day = params[:consumption_per_day]
    @dog.user_id = params[:user_id]
    @dog.picture_url = params[:picture_url]

    if @dog.save
      redirect_to "/dogs", :notice => "Dog updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @dog = Dog.find(params[:id])

    @dog.destroy

    redirect_to "/dogs", :notice => "Dog deleted."
  end
end
