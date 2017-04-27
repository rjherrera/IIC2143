json.extract! article, :id, :content, :created_at, :updated_at, :user_id, :tv_show_id
json.url article_url(article, format: :json)
