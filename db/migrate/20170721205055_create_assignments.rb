class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.references :game, index: true, foreign_key: true
      t.references :employee, index: true, foreign_key: true
      t.integer :role

      t.timestamps null: false
    end
  end
end
