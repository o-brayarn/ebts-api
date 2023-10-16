class Charge < ApplicationRecord
    validates :origin, presence: true
    validates :destination, presence: true
    validates :price, presence: true
end
