class AddImageToTvShow < ActiveRecord::Migration[5.0]
  def change
    add_column :tv_shows, :image, :string
  end
end
