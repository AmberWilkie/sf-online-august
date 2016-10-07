# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

FactoryGirl.create(:user, name: "Owner Three", role: "owner", email: "email@ownerthree.com")
user = User.find_by(name: "Owner Three")
FactoryGirl.create(:restaurant, name: "Restaurant Three", user: user, category: "Pizza")
