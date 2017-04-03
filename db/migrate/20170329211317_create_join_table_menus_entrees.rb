class CreateJoinTableMenusEntrees < ActiveRecord::Migration[5.0]
  def change
    create_join_table :menus, :entrees do |t|
      # t.index [:menu_id, :entree_id]
      # t.index [:entree_id, :menu_id]
    end
  end
end
