class CreateMaterialGroups < ActiveRecord::Migration
  def change
    create_table :material_groups do |t|
      t.string :name

      t.timestamps
    end
  end
end
