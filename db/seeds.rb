# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# student = Student.create(
#   name: 'Damodar',
#   major: 'Philosophy'
# )

15.times do |i|
  puts "Student #{i+1} details"
  Student.create(
    name: "Student_#{i+1}",
    email: "Student#{i+1}@gmail.com",
    age: i+20
  )
end