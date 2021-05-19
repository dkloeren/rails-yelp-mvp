# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
names = [
  'TooExpensivePizza',
  'KebabLand',
  'Panda Express',
  'Beer-La-Beer',
  "Fish'n'Chili"
]

address = [
  'Ku-Damm 1, 19283 Berlin, Deutschland',
  'Turmstr. 100, 10559 Berlin, Deutschland',
  '4 Ann Arbor St., Ann Arbor, NY 23423, USA',
  'Platz der Luftbruecke 10',
  'Baker Street, London'
]

phone_number = [
  '110',
  '112',
  '+49 30 278 83 29',
  '0170 3324 45 33',
  '03087299212'
]

category = ["chinese", "italian", "japanese", "french", "belgian"];

(1..5).to_a.each do |i|
  restaurant = Restaurant.new(
    name: names[i],
    address: address[i],
    phone_number: phone_number[i],
    category: category[i]
    )
  restaurant.save
end
