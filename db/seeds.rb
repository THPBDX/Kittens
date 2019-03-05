# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def simplify(breed)
  breed.slice(/[a-zA-Z\s-]+/).strip
end

def create_kitten(breed=Faker::Creature::Cat.unique.breed, name=Faker::Creature::Cat.unique.name,
  age=rand(1..12), origin=Faker::Creature::Cat.registry)

  Kitten.create(
    photo: simplify(breed).downcase.gsub(/[\s-]/, '_') + '.jpg',
    name: name,
    age: age,
    breed: breed,
    origin: origin,
    price: Faker::Number.within(20.00..50.00).to_s.slice(0, 5)
  )
end

Kitten.destroy_all

# 28.times do
#   create_kitten
# end

create_kitten('European Shorthair', 'Kira', 24, 'Misa Kitten')
create_kitten('Siamese', 'Yoga', 36, 'Cris Dev')
create_kitten('American Shorthair')
create_kitten('Bambino')
create_kitten('Burmese')
create_kitten('California Spangled')
create_kitten('Chartreux')
create_kitten('Cheetoh')
create_kitten('Cymric, or Manx Longhair')
create_kitten('Dragon Li')
create_kitten('German Rex')
create_kitten('Havana Brown')
create_kitten('Himalayan, or Colorpoint Persian')
create_kitten('Khao Manee')
create_kitten('Korn Ja')
create_kitten('Kurilian Bobtail, or Kuril Islands Bobtail')
create_kitten('Mekong Bobtail')
create_kitten('Minskin')
create_kitten('Napoleon')
create_kitten('Norwegian Forest Cat')
create_kitten('Ocicat')
create_kitten('Oriental Longhair')
create_kitten('Persian (Modern Persian Cat)')
create_kitten('Pixie-bob')
create_kitten('Raas')
create_kitten('Singapura')
create_kitten('Somali')
create_kitten('Suphalak')
create_kitten('Tonkinese')
create_kitten('Turkish Angora')
