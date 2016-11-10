class AddPhotoCacheToProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :photo_cache, :string
  end
end
