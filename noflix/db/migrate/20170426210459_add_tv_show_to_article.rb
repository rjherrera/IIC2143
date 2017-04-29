class AddTvShowToArticle < ActiveRecord::Migration[5.0]
  def change
    add_reference :articles, :tv_show, foreign_key: true
  end
end
