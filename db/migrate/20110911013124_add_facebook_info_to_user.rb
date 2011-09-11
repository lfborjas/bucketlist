class AddFacebookInfoToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :token, :string
    add_column :users, :uid, :string
    add_column :users, :name, :string
  end

  def self.down
    remove_column :users, :name
    remove_column :users, :uid
    remove_column :users, :token
  end
end
