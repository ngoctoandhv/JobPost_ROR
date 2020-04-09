json.extract! candidate, :id, :candidate_name, :date_of_birth, :phone, :avatar, :cv, :created_at, :updated_at
json.url candidate_url(candidate, format: :json)
