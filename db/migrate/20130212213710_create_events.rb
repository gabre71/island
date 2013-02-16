class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.date :term_start
      t.date :term_end
      t.date :order_end
      t.references :manager
      t.references :deputy

      t.timestamps
    end
    add_index :events, :manager_id
    add_index :events, :deputy_id
  end
end
