class CreateTvShows < ActiveRecord::Migration[5.0]
  def change
    create_table :tv_shows do |t|
      t.string :title
      t.string :language
      t.string :country
      t.integer :start_year
      t.integer :end_year
      t.text :plot

      t.timestamps
    end
  end
end
