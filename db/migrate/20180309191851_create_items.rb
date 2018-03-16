class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :rarity
      t.string :img
      t.boolean :playersChoice
    end
  end
end
