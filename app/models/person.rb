class Person < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :gender, presence: true
  validates :first_name, uniqueness: { scope: :last_name, message: "last_name alraedy exists" }
  validates :gender, inclusion: { in: %w[male female non-binary] }

  normalizes :first_name, :last_name, :given_name, :nick_name, :gender, 
              with: ->(value) {value.strip}
 


end
