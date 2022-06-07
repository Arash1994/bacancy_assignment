# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


user = Account.create!(email: "joseph@gmail.com", first_name: "Joseph", password: "123123123")
  Account.create!(email: "merry@gmail.com", first_name: "merry", password: "123123123")
  Account.create!(email: "jesus@gmail.com", first_name: "jesus", password: "123123123")


NomineeRecord.create!(account_id: 1, nominee_id: 2, relationship: "wife", weightage: 70)

NomineeRecord.create!(account_id: 1, nominee_id: 3, relationship: "son", weightage: 30)