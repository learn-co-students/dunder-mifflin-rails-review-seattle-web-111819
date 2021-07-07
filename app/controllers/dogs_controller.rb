class DogsController < ApplicationController

    def new
        @dog = Dog.new
    end 

    def index
        # @dogs = Dog.all
        # @sorted_dogs = 
        @sorted_dogs= Dog.sorted_dogs.reverse!
        # @sorted_dogs.reverse!
    end

    def show
        @dog = Dog.find(params[:id])
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
        @dog = Dog.find(params[:id])
    end

    def update
        @dog = Dog.find
        if @dog.update(dog_params)
            redirect_to dog_path
        else 
            render :edit
        end
    end

    def destroy
        @dog = Dog.find(params[:id])
        @dog.destroy
        redirect_to dogs_path
    end 

    private 

    def dog_params
        params.require(:dog).permit(:name, :breed, :age)
    end 

end
