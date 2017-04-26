class AddSerieToReview < ActiveRecord::Migration[5.0]
  def change
    add_reference :reviews, :serie, foreign_key: true
  end
end
