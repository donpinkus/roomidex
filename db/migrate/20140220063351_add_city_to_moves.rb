class AddCityToMoves < ActiveRecord::Migration
  def change
    add_column :moves, :city_id, :integer
    add_index :moves, :city_id
  end
end
