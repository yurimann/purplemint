class CreateJoinTableMenusBeverages < ActiveRecord::Migration[5.0]
  def change
    create_join_table :menus, :beverages do |t|
      # t.index [:menu_id, :beverage_id]
      # t.index [:beverage_id, :menu_id]
    end
  end
end
