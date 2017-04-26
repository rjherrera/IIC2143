class AddSerieToArticle < ActiveRecord::Migration[5.0]
  def change
    add_reference :articles, :serie, foreign_key: true
  end
end
