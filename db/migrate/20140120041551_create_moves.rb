class CreateMoves < ActiveRecord::Migration
  def change
    create_table :moves do |t|
      t.date :start_date
      t.date :end_date
      t.integer :min_price
      t.integer :max_price

      t.timestamps
    end
  end
end
