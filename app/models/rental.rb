class Rental < ApplicationRecord
    validates :property, presence: true
    validates :rent, presence: true, numericality: { only_integer: true }, length: { minimum: 5 } 
    validates :address, presence: true
    validates :age, presence: true, numericality: { only_integer: true }
    validates :remarks, presence: true
    has_many :stations, dependent: :destroy
    accepts_nested_attributes_for :stations
end
