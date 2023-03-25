class Boat < ApplicationRecord
  has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_by_category,
  against: [ :category ],
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }
  
end
