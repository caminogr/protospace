class AddColumntoUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :member, :string
    add_column :users, :profile, :text
  end
end
