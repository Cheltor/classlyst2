class AddsAdminColumnToStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :admin, :boolean, default: false, null: false
  end
end
