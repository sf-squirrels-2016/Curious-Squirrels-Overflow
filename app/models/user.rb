class User < ActiveRecord::Base
  has_many :tweets
  has_many :retweets

  has_many :follower, class_name: "Connection", foreign_key: "follower_id"
  has_many :followed, through: :connections, class_name: "Connection", foreign_key: "followed_id"
  # Remember to create a migration!
end
