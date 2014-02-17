class CreateNeighborhoods < ActiveRecord::Migration
  def change
    create_table :neighborhoods do |t|
      t.references :city, index: true
      t.string :name

      t.timestamps
    end
  end
end
