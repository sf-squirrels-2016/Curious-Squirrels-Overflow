class Tweet < ActiveRecord::Base
  belongs_to :user
  has_many :retweets
  # Remember to create a migration!
end
