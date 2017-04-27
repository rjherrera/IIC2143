json.extract! tv_show, :id, :title, :language, :country, :category, :start_year, :end_year, :plot, :created_at, :updated_at
json.url tv_show_url(tv_show, format: :json)
