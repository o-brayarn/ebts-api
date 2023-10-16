class CreateCharges < ActiveRecord::Migration[7.1]
  def change
    create_table :charges do |t|
      t.string :origin
      t.string :destination
      t.string :price

      t.timestamps
    end
  end
end
