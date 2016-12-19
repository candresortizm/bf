class AddWinnerToPetWall < ActiveRecord::Migration[5.0]
  def change
    add_column :pet_walls, :winner_id, :integer
  end
end
