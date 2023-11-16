class Years < ActiveRecord::Migration[7.0]
  def change
    create_table :years do |t|
      t.integer :population
      t.references :state, null: false, foreign_key: true

      t.timestamps
    end
  end
end
