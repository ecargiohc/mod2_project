class CreateLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :logs do |t|
      t.integer :motto_id
      t.integer :user_id
      t.string :title
      t.text :entry
      t.string :date

      t.timestamps
    end
  end
end
