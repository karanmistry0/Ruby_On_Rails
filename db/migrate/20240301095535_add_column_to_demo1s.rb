class AddColumnToDemo1s < ActiveRecord::Migration[7.1]
  def change
    add_column :demo1s, :author, :string
    add_column :demo1s, :release_date, :date
  end
end
