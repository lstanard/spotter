class FixPasswordColumnOnUsers < ActiveRecord::Migration
  def change
    add_column :users, :password_digest, :string
    remove_column :users, :password_hash
    remove_column :users, :password_salt
  end
end
