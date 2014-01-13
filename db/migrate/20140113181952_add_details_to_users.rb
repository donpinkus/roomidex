class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :age, :int
    add_column :users, :gender, :string
    add_column :users, :university, :string
    add_column :users, :grad_year, :int
    add_column :users, :occupation, :string
    add_column :users, :company, :string
  end
end
