class Company < ApplicationRecord
  has_many :jobs

  normalizes :name, with: ->(value) {value.strip}

  validates :name, presence: true
  validates :name, uniqueness: true
end
