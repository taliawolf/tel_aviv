class Restaurant < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :address, uniqueness: true, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_name_and_description,
    against: {
      name: 'A',
      description: 'B'
   },
    using: {
      tsearch: { prefix: true }
    }
end
