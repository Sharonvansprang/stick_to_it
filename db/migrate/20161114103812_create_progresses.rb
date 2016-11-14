class CreateProgresses < ActiveRecord::Migration[5.0]
  def change
    create_table :progresses do |t|
      t.string :mood
      t.boolean :done
      t.text :log
      t.date :day
      t.references :achievement, foreign_key: true

      t.timestamps
    end
  end
end
