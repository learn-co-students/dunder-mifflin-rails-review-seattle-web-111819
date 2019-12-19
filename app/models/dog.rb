class Dog < ApplicationRecord
    has_many :employees

    def self.dog_ord
        self.all.sort_by {|dog| dog.employees.count}.reverse
    end
end
