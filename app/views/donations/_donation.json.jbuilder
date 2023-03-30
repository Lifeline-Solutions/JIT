json.extract! donation, :id, :type_of_donation, :drop_off_point, :quantity, :nature, :user_id, :created_at, :updated_at
json.url donation_url(donation, format: :json)
