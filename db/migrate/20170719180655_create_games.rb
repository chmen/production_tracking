class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.string :packageName
      t.string :Store

      t.timestamps null: false
    end
  end
end
