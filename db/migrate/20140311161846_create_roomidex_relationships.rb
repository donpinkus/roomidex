class CreateRoomidexRelationships < ActiveRecord::Migration
  def change
    create_table :roomidex_relationships do |t|
      t.references :user, index: true
      t.integer :friend_id
      t.timestamps
    end
  end
end
