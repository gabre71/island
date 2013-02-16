class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :name
      t.references :material_group
      t.references :material_type
      t.float :quantity
      t.references :unit

      t.timestamps
    end
    add_index :materials, :material_group_id
    add_index :materials, :material_type_id
    add_index :materials, :unit_id
  end
end
