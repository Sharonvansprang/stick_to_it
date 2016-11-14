class ChangeDateFormatForAchievements < ActiveRecord::Migration[5.0]
  def change
    remove_column :achievements, :startdate
    remove_column :achievements, :enddate

    add_column :achievements, :startdate, :date

  end
end
