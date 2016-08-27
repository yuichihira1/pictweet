class Comment < ActiveRecord::Base
  belongs_to :tweet #tweetテーブルへのアソシエーション
  belongs_to :user #usersテーブルへのアソシエーション
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :tweet_id
      t.text :text
      t.timestamps
    end
end
