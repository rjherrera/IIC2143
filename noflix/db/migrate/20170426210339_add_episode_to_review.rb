class AddEpisodeToReview < ActiveRecord::Migration[5.0]
  def change
    add_reference :reviews, :episode, foreign_key: true
  end
end
