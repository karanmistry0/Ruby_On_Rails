class AddColumnToStudents < ActiveRecord::Migration[7.1]
  def change
    add_column :students, :name, :string
    add_column :students, :major, :string
  end
end
