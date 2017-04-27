class CreateJoinTableActorsTvShows < ActiveRecord::Migration[5.0]
  def change
    create_join_table :actors, :tv_shows do |t|
      # t.index [:actor_id, :tv_shows_id]
      # t.index [:tv_shows_id, :actor_id]
    end
  end
end
