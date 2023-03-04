class CreateMapWeaponSquares < ActiveRecord::Migration[7.0]
  def change
    create_table :map_weapon_squares do |t|
      t.belongs_to :weapon, null: false, foreign_key: true
      t.integer :grid_number

      t.timestamps
    end
  end
end
