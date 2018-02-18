class CreateTrashItems < ActiveRecord::Migration[5.0]
  def change
    create_table :trash_items do |t|
      t.datetime :time_thrown
      t.integer :correctness

      t.timestamps
    end
  end
end
