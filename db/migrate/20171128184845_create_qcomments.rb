class CreateQcomments < ActiveRecord::Migration[5.1]
  def change
    create_table :qcomments do |t|
      t.string :texto
      t.references :user, foreign_key: true
      t.references :question, foreign_key: true
      t.integer :positive_votes, default: 0
      t.integer :negative_votes, default: 0

      t.timestamps
    end
  end
end
