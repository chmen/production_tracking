class AddRoleToEmployee < ActiveRecord::Migration
  def change
    add_column :employees, :role, :integer
  end
end
