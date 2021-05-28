json.extract! song, :id, :title, :author, :album, :format, :rating, :size_mb, :created_at, :updated_at
json.url song_url(song, format: :json)
