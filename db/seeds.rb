# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create!(username: "Pablo Escobar", email: "pablo@escobar.com", password: "123456")
user_two = User.create!(username: "Walter White", email: "breaking@bad.com", password: "123456")

mule = Mule.new(transportation_means: "plane", description: "fast and reliable", rate_per_km_per_kg: 2)
mule.user = user
mule.save!

mule_two = Mule.new(transportation_means: "ferry", description: "stealth and kind", rate_per_km_per_kg: 1)
mule_two.user = user_two
mule_two.save!

offer = Offer.new(
  destination: "Miami",
  starting_point: "Kaboul",
  distance: 12_500,
  drug_type: "opium",
  weight: 20,
  commission: 500_000
)
offer.user = user
offer.mule = mule
offer.save!

offer_2 = Offer.new(
  destination: "Berlin",
  starting_point: "Chez DavidetBene Rennes",
  distance: 1174,
  drug_type: "Ecstasy",
  weight: 10,
  commission: 11_740
)
offer_2.user = user_two
offer_2.mule = mule_two
offer_2.save!
