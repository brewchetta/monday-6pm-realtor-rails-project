class CreateRealtors < ActiveRecord::Migration[6.0]
  def change
    create_table :realtors do |t|
      t.string :name
      t.integer :phone_number
      t.string :company

      t.timestamps
    end
  end
end
