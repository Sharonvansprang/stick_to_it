class RemoveForeignKeyToSelfOnAchievements < ActiveRecord::Migration[5.0]
  def up
     remove_foreign_key(:achievements, :achievements) #foreign_key: {to_table: :achievements})
  end
end
