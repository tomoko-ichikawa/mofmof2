class Station < ApplicationRecord
  belongs_to :rental, optional: true
end
