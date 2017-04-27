class AddTvShowToSeason < ActiveRecord::Migration[5.0]
  def change
    add_reference :seasons, :tv_show, foreign_key: true
  end
end
