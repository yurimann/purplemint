class CreateJoinTableMenusDesserts < ActiveRecord::Migration[5.0]
  def change
    create_join_table :menus, :desserts do |t|
      # t.index [:menu_id, :dessert_id]
      # t.index [:dessert_id, :menu_id]
    end
  end
end
