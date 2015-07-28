class CreateUserRandomChallenges < ActiveRecord::Migration
  def change
    create_table :user_random_challenges do |t|
      t.integer :user_id
      t.integer :random_challenge_id
      t.string :status
      t.string :truthordare
      t.string :truth_answer
      t.string :dare_upload

      t.timestamps
    end
  end
end
