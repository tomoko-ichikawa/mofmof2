class Station < ApplicationRecord
    validates :route_name, presence: true
    validates :walking_minutes, presence: true, numericality: { only_integer: true }
    validates :station_name, presence: true
  belongs_to :rental, optional: true
end
