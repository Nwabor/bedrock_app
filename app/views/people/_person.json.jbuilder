json.extract! person, :id, :first_name, :last_name, :given_name, :nick_name, :gender, :created_at, :updated_at
json.url person_url(person, format: :json)
