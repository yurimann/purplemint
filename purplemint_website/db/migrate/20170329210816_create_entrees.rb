class CreateEntrees < ActiveRecord::Migration[5.0]
  def change
    create_table :entrees do |t|
      t.string :name

      t.timestamps
    end
  end
end
