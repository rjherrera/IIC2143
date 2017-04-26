class CreateEpisodes < ActiveRecord::Migration[5.0]
  def change
    create_table :episodes do |t|
      t.integer :number
      t.string :title
      t.time :duration
      t.text :plot

      t.timestamps
    end
  end
end
