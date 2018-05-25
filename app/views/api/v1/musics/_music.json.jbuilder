json.extract! music, :id, :artwork_id, :title, :usage, :beginning_margin_sec, :created_at, :updated_at
json.url api_v1_artwork_music_url(artwork, music, format: :json)
