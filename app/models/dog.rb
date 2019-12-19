class Dog < ApplicationRecord

    has_many :employees


    def self.sort_dogs
        dogz = self.all.sort_by do |dog|
        dog.employees.count
        end
        dogz.reverse 
    end 


end
