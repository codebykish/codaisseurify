class AddCompletedToSongs < ActiveRecord::Migration[5.1]
  def change
    add_column :songs, :completed, :boolean
  end
end
