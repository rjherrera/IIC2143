class AddNameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string
    add_column :users, :is_kid, :boolean, default: false
    add_column :users, :is_admin, :boolean, default: false
    add_reference :users, :father, references: :users, index: true
    add_foreign_key :users, :users, column: :father_id
  end
end
