# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create!(username: "Pablo Escobar", email: "pablo@escobar.com", password: "123456", photo: "https://res.cloudinary.com/ddk5g0o9g/image/upload/v1637058577/walterW_rvbhqx.jpg")
user_two = User.create!(username: "Walter White", email: "breaking1@badi.com", password: "123456", photo: "https://res.cloudinary.com/ddk5g0o9g/image/upload/v1637058577/walterW_rvbhqx.jpg")
user_three = User.create!(username: "Corine Whote", email: "breaking2@bada.com", password: "123456", photo: "https://res.cloudinary.com/ddk5g0o9g/image/upload/v1637058577/walterW_rvbhqx.jpg")
user_four = User.create!(username: "Sophie Whute", email: "breaking3@badu.com", password: "123456", photo: "https://res.cloudinary.com/ddk5g0o9g/image/upload/v1637058577/walterW_rvbhqx.jpg")
user_five = User.create!(username: "Maxime Whyte", email: "breaking4@bade.com", password: "123456", photo: "https://res.cloudinary.com/ddk5g0o9g/image/upload/v1637058577/walterW_rvbhqx.jpg")
user_six = User.create!(username: "Boris Whate", email: "breaking5@bado.com", password: "123456", photo: "https://res.cloudinary.com/ddk5g0o9g/image/upload/v1637058577/walterW_rvbhqx.jpg")
user_seven= User.create!(username: "Peter Whoute", email: "breaking6@bady.com", password: "123456", photo: "https://res.cloudinary.com/ddk5g0o9g/image/upload/v1637058577/walterW_rvbhqx.jpg")
user_eight = User.create!(username: "Henry Whiate", email: "breaking7@badaa.com", password: "123456", photo: "https://res.cloudinary.com/ddk5g0o9g/image/upload/v1637058577/walterW_rvbhqx.jpg")
user_nine = User.create!(username: "SamuelWhute", email: "breaking8@badou.com", password: "123456", photo: "https://res.cloudinary.com/ddk5g0o9g/image/upload/v1637058577/walterW_rvbhqx.jpg")
user_ten = User.create!(username: "Albert Whaute", email: "breaking9@badu.com", password: "123456", photo: "https://res.cloudinary.com/ddk5g0o9g/image/upload/v1637058577/walterW_rvbhqx.jpg")

mule = Mule.new(transportation_means: "plane", description: "fast and reliable", rate_per_km_per_kg: 2, location: "Manilla")
mule.user = user
mule.save!

mule_two = Mule.new(transportation_means: "ferry", description: "stealth and kind", rate_per_km_per_kg: 1, location: "Marseille")
mule_two.user = user_two
mule_two.save!

mule_three = Mule.new(transportation_means: "ferry", description: "stealth and kind", rate_per_km_per_kg: 1, location: "Miami")
mule_three.user = user_three
mule_three.save!

mule_four = Mule.new(transportation_means: "ferry", description: "stealth and kind", rate_per_km_per_kg: 1, location: "Munich")
mule_four.user = user_four
mule_four.save!

mule_five = Mule.new(transportation_means: "ferry", description: "stealth and kind", rate_per_km_per_kg: 1, location: "Montpellier")
mule_five.user = user_five
mule_five.save!

mule_six = Mule.new(transportation_means: "ferry", description: "stealth and kind", rate_per_km_per_kg: 1, location: "Manchester")
mule_six.user = user_six
mule_six.save!

mule_seven = Mule.new(transportation_means: "ferry", description: "stealth and kind", rate_per_km_per_kg: 1, location: "Morlaix")
mule_seven.user = user_seven
mule_seven.save!

mule_eight = Mule.new(transportation_means: "ferry", description: "stealth and kind", rate_per_km_per_kg: 1, location: "Manilla")
mule_eight.user = user_eight
mule_eight.save!

mule_nine = Mule.new(transportation_means: "ferry", description: "stealth and kind", rate_per_km_per_kg: 1, location: "Manilla")
mule_nine.user = user_nine
mule_nine.save!

mule_ten = Mule.new(transportation_means: "ferry", description: "stealth and kind", rate_per_km_per_kg: 1, location: "Manilla")
mule_ten.user = user_ten
mule_ten.save!

mule_eleven = Mule.new(transportation_means: "ferry", description: "stealth and kind", rate_per_km_per_kg: 1, location: "Manilla")
mule_eleven.user = user_three
mule_eleven.save!

mule_twelve = Mule.new(transportation_means: "ferry", description: "stealth and kind", rate_per_km_per_kg: 1, location: "Manilla")
mule_twelve.user = user_three
mule_twelve.save!

mule_thirteen = Mule.new(transportation_means: "ferry", description: "stealth and kind", rate_per_km_per_kg: 1, location: "Manilla")
mule_thirteen.user = user_three
mule_thirteen.save!

mule_fourteen = Mule.new(transportation_means: "ferry", description: "stealth and kind", rate_per_km_per_kg: 1, location: "Manilla")
mule_fourteen.user = user_three
mule_fourteen.save!

mule_fifteen = Mule.new(transportation_means: "ferry", description: "stealth and kind", rate_per_km_per_kg: 1, location: "Manilla")
mule_fifteen.user = user_three
mule_fifteen.save!

mule_sixteen = Mule.new(transportation_means: "ferry", description: "stealth and kind", rate_per_km_per_kg: 1, location: "Manilla")
mule_sixteen.user = user_three
mule_sixteen.save!

mule_seventeen = Mule.new(transportation_means: "ferry", description: "stealth and kind", rate_per_km_per_kg: 1, location: "Manilla")
mule_seventeen.user = user_three
mule_seventeen.save!

mule_eighteen = Mule.new(transportation_means: "ferry", description: "stealth and kind", rate_per_km_per_kg: 1, location: "Manilla")
mule_eighteen.user = user_three
mule_eighteen.save!

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
