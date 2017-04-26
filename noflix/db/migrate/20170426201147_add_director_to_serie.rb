class AddDirectorToSerie < ActiveRecord::Migration[5.0]
  def change
    add_reference :series, :director, foreign_key: true
  end
end
