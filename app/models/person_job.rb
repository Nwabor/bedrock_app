class PersonJob < ApplicationRecord
  belongs_to :person
  belongs_to :job

  validates :job, presence: true
  validates :person, presence: true
  validates :start_date, presence: true

  validates :person, 
            uniqueness: {scope: [:job, :start_date], message: "person and job with start date already exists" }
end
