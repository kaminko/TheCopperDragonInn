class AddAncestryToCharacterSystem < ActiveRecord::Migration[5.1]
  def change
    add_column :character_systems, :ancestry, :string
    add_index :character_systems, :ancestry
  end
end
