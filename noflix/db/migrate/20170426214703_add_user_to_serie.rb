class AddUserToSerie < ActiveRecord::Migration[5.0]
  def change
    add_reference :series, :owner, references: :users, index: true
    add_foreign_key :series, :users, column: :owner_id
  end
end
