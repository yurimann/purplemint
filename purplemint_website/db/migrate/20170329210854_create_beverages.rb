class CreateBeverages < ActiveRecord::Migration[5.0]
  def change
    create_table :beverages do |t|
      t.string :name

      t.timestamps
    end
  end
end
