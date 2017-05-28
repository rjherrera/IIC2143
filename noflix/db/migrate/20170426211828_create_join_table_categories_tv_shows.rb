class CreateJoinTableCategoriesTvShows < ActiveRecord::Migration[5.0]
  def change
    create_join_table :categories, :tv_shows do |t|
    end
  end
end
