class AddColumnToMenu < ActiveRecord::Migration[5.0]
  def change
    add_column :menus, :price, :string
  end
end
