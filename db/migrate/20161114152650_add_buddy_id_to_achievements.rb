class AddBuddyIdToAchievements < ActiveRecord::Migration[5.0]
  def change

    # add_column :achievements, :buddy_achievement_id
    add_reference(:achievements, :buddy_achievement, foreign_key: {to_table: :achievements})

  end
end
