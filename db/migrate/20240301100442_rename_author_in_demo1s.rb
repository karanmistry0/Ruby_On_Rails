class RenameAuthorInDemo1s < ActiveRecord::Migration[7.1]
  def change
    rename_column :demo1s,:author,:written_by
  end
end
