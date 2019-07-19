class Rental < ApplicationRecord
    has_many :stations, dependent: :destroy
    accepts_nested_attributes_for :stations
end
