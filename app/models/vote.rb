class Vote < ActiveRecord::Base
 belongs_to :votable, :polymorphic => true

  # Remember to create a migration!
end
