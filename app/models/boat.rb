class Boat < ApplicationRecord
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many :bookings
  has_many :users, through: :bookings

  include PgSearch::Model
  pg_search_scope :search_by_category,
  against: [ :category ],
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }

end
