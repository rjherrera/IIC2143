class CreateJoinTableSubtitlesTvShows < ActiveRecord::Migration[5.0]
  def change
    create_join_table :subtitles, :tv_shows do |t|
      # t.index [:subtitle_id, :tv_shows_id]
      # t.index [:tv_shows_id, :subtitle_id]
    end
  end
end
