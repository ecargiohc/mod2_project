class CreateAchievements < ActiveRecord::Migration[6.0]
  def change
    create_table :achievements do |t|
      t.integer :user_goal_id
      t.text :report

      t.timestamps
    end
  end
end
