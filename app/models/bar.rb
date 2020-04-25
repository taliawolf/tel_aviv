class Bar < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :address, uniqueness: true, presence: true
end
