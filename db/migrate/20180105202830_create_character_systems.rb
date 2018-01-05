class CreateCharacterSystems < ActiveRecord::Migration[5.1]
  def change
    create_table :character_systems do |t|
      t.string :system
      t.text :characters

      t.timestamps
    end
  end
end
