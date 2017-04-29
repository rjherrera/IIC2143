class AddTvShowToReview < ActiveRecord::Migration[5.0]
  def change
    add_reference :reviews, :tv_show, foreign_key: true
  end
end
