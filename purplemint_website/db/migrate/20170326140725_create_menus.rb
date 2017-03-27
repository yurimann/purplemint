class CreateMenus < ActiveRecord::Migration[5.0]
  def change
    create_table :menus do |t|
      t.string :name
      t.string :image
      t.text :description

      t.timestamps
    end
  end
end
