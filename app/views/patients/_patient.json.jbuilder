json.extract! patient, :id, :name, :age, :ward_number, :notes, :created_at, :updated_at
json.url patient_url(patient, format: :json)
