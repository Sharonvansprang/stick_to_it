class CreateLifeGoals < ActiveRecord::Migration[5.0]
  def change
    create_table :life_goals do |t|
      t.string :name

      t.timestamps
    end
  end
end
