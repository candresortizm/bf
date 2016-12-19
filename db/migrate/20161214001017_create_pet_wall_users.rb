class CreatePetWallUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :pet_wall_users do |t|
      t.integer :pet_walls_id
      t.integer :user_id
      t.integer :score
      t.string :comments

      t.timestamps
    end
  end
end
