class Review < ApplicationRecord
  belongs_to :restaurant
  validades :content, presence: true
  validades :rating, inclusion: {in: 0..5, allow_nil: false}
end
