class CreateMottos < ActiveRecord::Migration[6.0]
  def change
    create_table :mottos do |t|
      t.string :phrase

      t.timestamps
    end
  end
end
