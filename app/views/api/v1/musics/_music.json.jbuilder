json.extract! music, :id, :user_id, :title, :beginning_margin_sec
json.chord do
  json.array! music.chords, partial: 'api/v1/chords/chord', as: :chord
end
json.bpms do
  json.array! music.bpms, partial: 'api/v1/bpms/bpm', as: :bpm
end
json.hyoshis do
  json.array! music.hyoshis, partial: 'api/v1/hyoshis/hyoshi', as: :hyoshi
end
json.keys do
  json.array! music.keys, partial: 'api/v1/keys/key', as: :key
end
json.phrases do
  json.array! music.phrases, partial: 'api/v1/phrases/phrase', as: :phrase
end
json.url api_v1_music_url(music, format: :json)
