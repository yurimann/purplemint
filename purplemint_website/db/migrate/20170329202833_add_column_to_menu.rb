class AddColumnToMenu < ActiveRecord::Migration[5.0]
  def change
    add_column :menus, :entree, :string
    add_column :menus, :beverage, :string
    add_column :menus, :dessert, :string
  end
end
