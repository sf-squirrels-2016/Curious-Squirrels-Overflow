class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :votable, polymorphic: true, index: true
      t.boolean :up_vote
      t.references :user
      t.timestamps
    end
  end
end
