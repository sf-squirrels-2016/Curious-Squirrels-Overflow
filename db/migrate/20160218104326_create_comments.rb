class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :user
      t.string :body
      t.references :commentable, polymorphic: true, index: true
      t.timestamps
    end
  end
end
