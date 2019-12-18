class Dog < ApplicationRecord
    has_many :employees

    def self.dog_order
        self.all.sort_by {|dog| dog.employees.count}.reverse
    end
end
