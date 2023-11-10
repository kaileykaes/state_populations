class CreateYears < ActiveRecord::Migration[7.1]
  def change
    create_table :years do |t|
      t.string :year 
      t.integer :population

      t.references :state, null: false, foreign_key: true

      t.timestamps
    end
  end
end
