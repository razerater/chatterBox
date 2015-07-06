class CreateUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
    end
    create_table :posts do |t|
      t.integer :user_id
      t.string :content
      t.datetime :time_posted
    end
    create_table :accounts do |t|
      t.integer :user_id
      t.string :password
      t.string :full_name
      t.string :bio
    end
  end
end