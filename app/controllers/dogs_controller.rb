class DogsController < ApplicationController
  def index
    @dogs = Dog.all
    @dogs_sorted = Dog.sort_dogs
  end

  def show
    @dog = Dog.find(params[:id])
  end

  


end
