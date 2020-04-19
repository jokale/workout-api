class BodyPart < ApplicationRecord
    # belongs_to :workout 
    has_many :workouts 
    has_many :athletes, through: :workouts

    validates :name, uniqueness: :true 

end 
