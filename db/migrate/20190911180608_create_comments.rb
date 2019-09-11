class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :log_id
      t.string :title
      t.text :entry

      t.timestamps
    end
  end
end
