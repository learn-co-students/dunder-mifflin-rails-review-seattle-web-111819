class Employee < ApplicationRecord

    belongs_to :dog
    validates :alias, uniqueness: true
    validates :title, uniqueness: true
    validates :alias, presence: true
    validates :title, presence: true


end
