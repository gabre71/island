class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :name
      t.references :head
      t.references :deputy

      t.timestamps
    end
    add_index :departments, :head_id
    add_index :departments, :deputy_id
  end
end
