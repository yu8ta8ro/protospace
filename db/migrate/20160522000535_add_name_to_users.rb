class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :text
    add_column :users, :avatar, :text
    add_column :users, :member, :string
    add_column :users, :profile, :string
    add_column :users, :work, :string
  end
end
