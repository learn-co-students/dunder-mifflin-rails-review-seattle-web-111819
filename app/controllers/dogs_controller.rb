class DogsController < ApplicationController
  before_action :find_dog, only: [:show, :edit, :update, :destroy]

  def index
    @dogs = Dog.all
    @sorted_dogs= Dog.sorted_dogs.reverse!
    # Sort dogs with number of owners by descending order
  end

  def new
    @dog = Dog.new
  end

  def show
    # find_dog
  end

  def create
    @dog = Dog.new(dog_params)

    if @dog.save
      redirect_to dogs_path
    else
      render :new
    end
  end

  def edit
    # find_dog
  end
  
  def update
    # find_dog  #find dog by id

    if @dog.update(dog_params)
      redirect_to @dog    #dog_path
    else
      render :edit
    end
  end

  def destroy
    # find_dog
    @dog.destroy
    redirect_to dogs_path
  end

  private
  
  def dog_params
    params.require(:dog).permit(:name, :breed, :age)
  end

  def find_dog
    @dog = Dog.find(params[:id])
  end
end
