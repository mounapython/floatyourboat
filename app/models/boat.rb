class Boat < ApplicationRecord
  has_one_attached :photo

  has_many :bookings
  has_many :users, through: :bookings

  include PgSearch::Model
  pg_search_scope :search_by_category,
  against: [ :category ],
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }

end
