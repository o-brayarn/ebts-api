# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.destroy_all
p "Seeding user data ..."
user1 = User.create!(username: "Admin Adam", email: "admin@example.com",  password: "admin1234", password_confirmation: "admin1234")
user2 = User.create!(username: "Sammie Sam", email: "samsam@example.com", password: "samsam1234", password_confirmation: "samsam1234")
user3 = User.create!(username: "Mary Marian", email: "mary@example.com",  password: "mary1234", password_confirmation: "mary1234")
user4 = User.create!(username: "John Smith", email: "smithj@example.com",  password: "smith1234", password_confirmation: "smith1234")

p "Seeding charges"
Charge.destroy_all
Charge.create!([
    {origin: "Nairobi", destination: "Mombasa", price: "1500"}, 
    {origin: "Nairobi", destination: "Nakuru", price: "450"},
    {origin: "Nairobi", destination: "Kisumu", price: "1000"},
    {origin: "Nairobi", destination: "Narok", price: "550"},
    {origin: "Nairobi", destination: "Naivasha", price: "450"},
    {origin: "Nairobi", destination: "Kilifi", price: "450"},
    ])