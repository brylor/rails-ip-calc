class AddReferencesToSubnets < ActiveRecord::Migration
  def change
    add_column :subnets, :system_id, :integer
    add_index :subnets, :system_id

  end
end
