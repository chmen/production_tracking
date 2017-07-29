class AddDesignerToAssignments < ActiveRecord::Migration
  def change
    add_column :assignments, :designer, :integer
  end
end
