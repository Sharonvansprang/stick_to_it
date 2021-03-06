class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.text :bio
      t.string :picture
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
