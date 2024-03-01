class ChangeTypeInDemo1s < ActiveRecord::Migration[7.1]
  def up
    change_column :demo1s,:description,:text
  end
  def down
    change_column :demo1s,:description,:string
  end
end
