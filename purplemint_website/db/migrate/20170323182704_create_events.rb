class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :new
      t.string :create
      t.string :edit
      t.string :update
      t.string :delete

      t.timestamps
    end
  end
end
