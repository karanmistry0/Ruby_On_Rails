class AddDemoRecordsToDemo1s < ActiveRecord::Migration[7.1]
  def up
    10.times do |i|
      puts "Creating demo record #{i}"
      Demo1.create(
        title: "Title_#{i}",
        description: "Description details of record #{i} ",
        written_by: "Person_#{i}"
      )
    end
  end

  def down
    10.times do |i|
      puts "Creating demo record #{i}"
      Demo1.find_by(title: "Title_#{i}").destroy
    end
  end

  # Alternate method
  # def change
  #   reversible do |dir|
  #     dir.up do
  #       10.times do |i|
  #         puts "Creating demo record #{i}"
  #         Demo1.create(
  #           title: "Title_#{i}",
  #           description: "Description details of record #{i} ",
  #           written_by: "Person_#{i}"
  #         )
  #       end
  #     end
  #     dir.down do
  #       10.times do |i|
  #         puts "Creating demo record #{i}"
  #         Demo1.find_by(title: "Title_#{i}").destroy
  #       end
  #     end
  #   end
  # end
end
