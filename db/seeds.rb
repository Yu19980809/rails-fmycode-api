# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Deleting all #{Story.count} previous stories"
Story.destroy_all
puts "Finished deleting"

puts "Adding new story"

10.times do
  new_story = Story.create(
    title: Faker::Hacker.adjective,
    content: Faker::Hacker.say_something_smart,
    picture_url: "https://images.unsplash.com/photo-1532012197267-da84d127e765?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8c3Rvcnl8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"
  )

  puts "Adding #{new_story.id} - #{new_story.title}"
end

puts "Finished adding, #{Story.count} stories have been added."
