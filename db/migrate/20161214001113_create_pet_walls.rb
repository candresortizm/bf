class CreatePetWalls < ActiveRecord::Migration[5.0]
  def change
    create_table :pet_walls do |t|
      t.string :name
      t.string :breed
      t.integer :size
      t.integer :age
      t.string :type
      t.string :descriptions
      t.string :state
      t.date :admission_date
      t.date :adoption_date
      t.integer :user_id
      t.string :image
      t.string :title

      t.timestamps
    end
  end
end
