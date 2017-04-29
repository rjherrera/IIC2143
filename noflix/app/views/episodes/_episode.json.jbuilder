json.extract! episode, :id, :number, :title, :duration, :plot, :created_at, :updated_at, :season_id
json.url episode_url(episode, format: :json)
