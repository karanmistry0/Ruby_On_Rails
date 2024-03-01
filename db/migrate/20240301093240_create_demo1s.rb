class CreateDemo1s < ActiveRecord::Migration[7.1]
  def change
    create_table :demo1s do |t|
      t.string :title
      t.string :description
      t.timestamps
    end
  end
end
