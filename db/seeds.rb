# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


10.times do |blog|
    Blog.create!(
        title:'My Blog Post #{blog}',
        body: 'ádad sdgfdgnr bfdbd',
    )
end

puts 'Ten Blog Posts Created'

5.times do |skill|
    Skill.create!(
        title:'Rails #{skill}',
        percent_utilizied: 15,
    )
end

puts 'Five Skills Created'

5.times do |portfolio_item|
    Portfolio.create!(
        title:'Portfolio title #{portfolio_item}',
        subtitle: 'My great services',
        body: 'Lorem Ipsum',
        main_image: 'http://placehold.it/600x400' , 
        thumb_image: 'http://placehold.it/350x200', 
    )
end

puts 'Nine Portfolio Item Created'
