class DogsController < ApplicationController
    def index
        @dogs = Dog.dog_order
        # @dogs = @dogs.sort_by {|dog| dog.employees.count}.reverse
        
    end

    def show
        @dog = Dog.find(params[:id])
    end
end
