class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :user
      t.string :body
      t.references :question
      t.timestamps
    end
  end
end
