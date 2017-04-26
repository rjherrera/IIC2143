class CreateJoinTableSubtitlesSeries < ActiveRecord::Migration[5.0]
  def change
    create_join_table :subtitles, :series do |t|
      # t.index [:subtitle_id, :series_id]
      # t.index [:series_id, :subtitle_id]
    end
  end
end
