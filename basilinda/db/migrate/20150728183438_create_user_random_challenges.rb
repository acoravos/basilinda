class CreateUserRandomChallenges < ActiveRecord::Migration
  def change
    create_table :user_random_challenges do |t|
      t.integer :user_id
      t.integer :random_challenge_id
      t.string :status
      t.string :truthordare
      t.string :answer

      t.timestamps
    end
  end
end
