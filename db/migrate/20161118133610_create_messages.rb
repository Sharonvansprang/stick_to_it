class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :text
      t.string :url
      t.string :photo
      t.references :achievement, foreign_key: true

      t.timestamps
    end
  end
end
