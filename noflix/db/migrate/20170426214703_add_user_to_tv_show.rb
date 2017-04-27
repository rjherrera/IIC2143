class AddUserToTvShow < ActiveRecord::Migration[5.0]
  def change
    add_reference :tv_shows, :owner, references: :users, index: true
    add_foreign_key :tv_shows, :users, column: :owner_id
  end
end
