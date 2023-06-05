class Character < ApplicationRecord
    validates :name, presence: true, length: {minimum: 4, maximun: 100} 
    validates :location, presence: true, length: {minimum: 4, maximun: 100} 
    validates :house, presence: true, length: {minimum: 4, maximun: 100} 
end