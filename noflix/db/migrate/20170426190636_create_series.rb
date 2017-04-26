class CreateSeries < ActiveRecord::Migration[5.0]
  def change
    create_table :series do |t|
      t.string :title
      t.string :language
      t.string :country
      t.string :category
      t.integer :start_year
      t.integer :end_year
      t.text :plot

      t.timestamps
    end
  end
end
