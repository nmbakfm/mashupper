json.extract! artwork, :id, :user_id, :title, :created_at, :updated_at
json.url api_v1_artwork_url(artwork, format: :json)
