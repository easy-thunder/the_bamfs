class CreateWeapons < ActiveRecord::Migration[7.0]
  def change
    create_table :weapons do |t|
      t.float :fire_rate
      t.integer :damage
      t.float :area_of_effect
      t.integer :pierce
      t.float :weapon_reload
      t.float :bullet_width
      t.integer :critical_rate
      t.float :bullet_speed

      t.timestamps
    end
  end
end
