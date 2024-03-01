class RemoveColumnFromDemo1s < ActiveRecord::Migration[7.1]
  def change
    remove_column :demo1s,:release_date,:date
  end
end
