class AddFieldToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :name, :string
    add_column :users, :ide, :string
    add_column :users, :languages, :string
    add_column :users, :country, :string
    add_column :users, :linkedin, :string
    add_column :users, :twitter, :string
    add_column :users, :github, :string
  end
end
