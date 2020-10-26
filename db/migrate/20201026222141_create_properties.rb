class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.integer :property_value
      t.string :address
      t.integer :rooms
      t.float :bathrooms
      t.integer :realtor_id

      t.timestamps
    end
  end
end
