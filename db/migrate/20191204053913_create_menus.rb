class CreateMenus < ActiveRecord::Migration[5.0]
  def change
    create_table :menus do |t|

      t.string :name, null: false
      t.string :img
      t.string :genre, null: false
      t.integer :price, null: false
      t.timestamps
    end
  end
end
