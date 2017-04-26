json.extract! series, :id, :title, :language, :country, :category, :start_year, :end_year, :plot, :is_private, :created_at, :updated_at
json.url series_url(series, format: :json)
