class Workout < ApplicationRecord
    belongs_to :athlete 
    belongs_to :body_part 
    # has_many :athletes, through: :body_part

    accepts_nested_attributes_for :athlete
    accepts_nested_attributes_for :body_part
    validates :name, uniqueness: :true
    validates :description, presence: :true


    
end
