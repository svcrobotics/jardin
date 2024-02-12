class Type < ApplicationRecord
  validates :nom, presence: true, uniqueness: true
  has_many :familles
end
