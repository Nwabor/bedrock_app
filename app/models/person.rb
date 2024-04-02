class Person < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :first_name, uniqueness: {scope: [:last_name, :gender]}

  enum gender: {male: 0, female: 1, non_binary: 2}
end
