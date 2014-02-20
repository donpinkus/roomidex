class CreateNeighborhoodPreferences < ActiveRecord::Migration
  def change
    create_table :neighborhood_preferences do |t|
      t.references :neighborhood, index: true
      t.references :move, index: true

      t.timestamps
    end
  end
end
