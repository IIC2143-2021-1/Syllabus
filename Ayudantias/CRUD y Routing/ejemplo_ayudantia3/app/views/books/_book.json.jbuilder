json.extract! book, :id, :title, :author, :edition, :rating, :size_mb, :description, :created_at, :updated_at
json.url book_url(book, format: :json)
