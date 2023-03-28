class Review < ApplicationRecord
  belongs_to :boat
  #validates :rating, presence: true, numericality: { only_integer: true, message: "must be an integer !" }
  def display_rating
    "#{rating}/10"
  end

end
