class States < ActiveRecord::Migration[7.0]
  def change
    create_table :states do |t|
      t.string :name
      t.integer :year
      t.integer :population

      t.timestamps
    end
  end
end
