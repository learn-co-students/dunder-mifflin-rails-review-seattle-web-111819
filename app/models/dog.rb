class Dog < ApplicationRecord
    has_many :employees

    # Sort dogs by number of owners
    # def self.sorted_dogs
    #     Dog.all.sort_by { |dog| dog.employees.size }
    # end 
end