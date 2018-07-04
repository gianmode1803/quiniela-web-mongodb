# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Event.delete_all
Match.delete_all
Calendar.delete_all
Stadium.delete_all
Calendar.delete_all
CoachTeam.delete_all
User.delete_all
Country.delete_all
Player.delete_all
Article.delete_all
Coach.delete_all
Stadium.delete_all
MediaTag.delete_all
Medium.delete_all
Tag.delete_all

Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each do |seed|
		load seed
end
