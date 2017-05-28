class CreateJoinTableCategoriesUsers < ActiveRecord::Migration[5.0]
  def change
    create_join_table :categories, :users do |t|
    end
  end
end
