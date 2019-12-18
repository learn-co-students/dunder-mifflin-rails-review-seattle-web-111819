require 'pry'
class Dog < ApplicationRecord
  has_many :employees


  def self.sort_dogs
    var = self.all.sort_by do |dog|
      dog.employees.count
    end
    var.reverse
  end
end
