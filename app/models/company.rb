class Company < ApplicationRecord
  normalizes :name, with: ->(value) {value.strip}
end
