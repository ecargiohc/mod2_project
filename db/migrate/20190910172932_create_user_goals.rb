class CreateUserGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :user_goals do |t|
      t.integer :user_id
      t.integer :goal_id
      t.string :description
      t.string :start_date
      t.string :goal_date

      t.timestamps
    end
  end
end
