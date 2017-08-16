class CreateFriendships < ActiveRecord::Migration
  def change
    create_table :friendships do |t|
      t.interger :user_id
      t.interger :friend_id

      t.timestamps null: false
    end
  end
end
