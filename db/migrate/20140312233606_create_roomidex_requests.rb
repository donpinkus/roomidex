class CreateRoomidexRequests < ActiveRecord::Migration
  def change
    create_table :roomidex_requests do |t|
      t.references :user, index: true
      t.references :receiver, index: true
      t.boolean :accepted
      t.boolean :ignored

      t.timestamps
    end
  end
end
