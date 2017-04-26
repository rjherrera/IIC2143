class AddSerieToSeason < ActiveRecord::Migration[5.0]
  def change
    add_reference :seasons, :serie, foreign_key: true
  end
end
