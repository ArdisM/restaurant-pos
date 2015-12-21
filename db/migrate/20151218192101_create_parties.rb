class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.integer :table_numb
      t.references :employee, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
