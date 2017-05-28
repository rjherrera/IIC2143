class AddFavouriteDirector < ActiveRecord::Migration[5.0]
  def change
    create_table :favourite_directors, id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :director, index: true
    end
  end
end
