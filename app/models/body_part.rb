class BodyPart < ApplicationRecord
    # belongs_to :workout 
    has_many :workouts 
    has_many :athletes, through: :workouts

    validates :title, uniqueness: :true 

end 
