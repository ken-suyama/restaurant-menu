class AddLikeBtnToMenus < ActiveRecord::Migration[5.0]
  def change
    add_column :menus, :like_btn, :integer, default: 0
  end
end
