class Dog < ApplicationRecord
    has_many :employees

    def self.sorted_dogs
        Dog.all.sort_by { |dog| dog.employees.size }
    end 
end
