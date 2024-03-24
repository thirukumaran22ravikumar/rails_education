json.extract! book, :id, :name, :price, :about, :created_at, :updated_at
json.url book_url(book, format: :json)
