class RemoveColumnsFromStudents < ActiveRecord::Migration[7.1]
  def change
    remove_column :students,:major,:string
  end
end
