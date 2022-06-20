# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


unless Rails.env.production?
  100.times do |i|
    Speedtest.create!(
      created_at: i.hours.ago,
      upload: rand(10..100),
      download: rand(100..1_000)
    )
  end
end
