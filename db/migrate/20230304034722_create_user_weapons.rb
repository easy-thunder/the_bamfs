class CreateUserWeapons < ActiveRecord::Migration[7.0]
  def change
    create_table :user_weapons do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :weapon_belongs_to

      t.timestamps
    end
  end
end
