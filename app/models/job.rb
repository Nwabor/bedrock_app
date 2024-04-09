class Job < ApplicationRecord
  belongs_to :company

  has_many :person_jobs, dependent: :destroy
  has_many :people, through: :person_jobs

  normalizes :role, with: ->(value) {value.strip}
  validates :company, presence: true
  validates :role, presence: true
  validates :role,
            uniqueness: {scope: :company_id,
                         message: "role and comapny already exists"}
end
