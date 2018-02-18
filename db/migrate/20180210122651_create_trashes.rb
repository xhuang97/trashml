class CreateTrashes < ActiveRecord::Migration[5.0]
  def change
    create_table :trashes do |t|
      t.string :name
      t.integer :quantity
      t.string :recycle_status

      t.timestamps
    end
  end
end
