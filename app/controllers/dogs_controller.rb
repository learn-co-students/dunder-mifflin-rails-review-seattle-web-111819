class DogsController < ApplicationController

    def index
        @dogs = Dog.dog_ord
    end

    def show
        @dog = Dog.find(params[:id])
    end


end
