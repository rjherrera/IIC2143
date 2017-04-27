json.extract! review, :id, :stars, :comment, :created_at, :updated_at, :tv_show_id, :user_id, :episode_id
json.url review_url(review, format: :json)
