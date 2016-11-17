class AddFinishedToAchievements < ActiveRecord::Migration[5.0]
  def change
    add_column :achievements, :active, :boolean, null: false, default: true
  end
end
