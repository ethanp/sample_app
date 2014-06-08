class AddIndexToUsersEmail < ActiveRecord::Migration
  def change
    # add an index to the User table on the email attribute, and add a uniqueness constraint
    add_index :users, :email, unique: true
  end
end
