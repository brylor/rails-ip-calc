class CreateSubnets < ActiveRecord::Migration
  def change
    create_table :subnets do |t|
      t.string :network
      t.string :firstaddr
      t.string :bcastaddr
      t.string :mask

      t.timestamps
    end
  end
end
