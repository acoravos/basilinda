class CreateRandomChallenges < ActiveRecord::Migration
  def change
    create_table :random_challenges do |t|
      t.string :truth
      t.string :dare

      t.timestamps
    end
  end
end
