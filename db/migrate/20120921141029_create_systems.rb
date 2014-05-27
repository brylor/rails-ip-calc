class CreateSystems < ActiveRecord::Migration
  def change
    create_table :systems do |t|
      t.string :name
      t.references :subnet

      t.timestamps
    end
    add_index :systems, :subnet_id
  end
end
