# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

$breeds = {
  'American Shorthair' => 'Although it is not an extremely athletic cat, the American Shorthair has a large, powerfully-built body. According to the breed standard of the Cat Fanciers\' Association, the American Shorthair is a true breed of working cat. They have round faces and short ears.',
  'Bambino' => 'Bambino cats are friendly, intelligent, and affectionate. They love to be handled and cuddled up on the laps of their family members. They get along well with children and other pets, provided that the kids are taught to treat the cat respectfully and proper introductions with the other pets are made.',
  'Burmese' => 'Burmese are a notably people-oriented breed, maintaining their kitten-like energy and playfulness into adulthood. They are also said to have a number of overtly puppy-like characteristics, forming strong bonds with their owners and gravitating toward human activity. The cats often learn to play games such as \'fetch\' and \'tag\'.',
  'California Spangled' => 'California Spangled Cats are said to be affectionate, social, curious, and extremely devoted to their owners. They are big on eye contact and being in on the action; they love to perch on places that are at shoulder or eye level so that they can see exactly what is going on.',
  'Chartreux' => 'Chartreux cats tend to be quiet, rarely making noises such as mewing or crying, and some are mute. They are quite observant and intelligent, with some Chartreux learning to operate radio on/off buttons and to open screen door latches. Some can be taught to fetch small objects in the same manner as a dog.',
  'Cheetoh' => 'Cheetoh cats are smart, energetic and playful. Many Cheetoh owners say that their Cheetoh naturally retrieves items, and they often enjoy playing in water. They are active, inquisitive cats that love to be up high. They get along well with other pets when properly introduced and enjoy being part of a family.',
  'Cymric, or Manx Longhair' => '',
  'Dragon Li' => '',
  'European Shorthair' => 'The breed has developed from the natural mouse hunters of Europe with the wish to strengthen the most desirable personality traits of the domestic cats. Most European Shorthairs are strong and active, and as a rule they are friendly towards people of all ages. They get on well with other cats and tolerate dogs well.',
  'German Rex' => '',
  'Havana Brown' => '',
  'Himalayan, or Colorpoint Persian' => '',
  'Khao Manee' => '',
  'Korn Ja' => '',
  'Kurilian Bobtail, or Kuril Islands Bobtail' => '',
  'Mekong Bobtail' => '',
  'Minskin' => '',
  'Napoleon' => '',
  'Norwegian Forest Cat' => '',
  'Ocicat' => '',
  'Oriental Longhair' => '',
  'Persian (Modern Persian Cat)' => '',
  'Pixie-bob' => '',
  'Raas' => '',
  'Siamese' => 'Siamese are usually very affectionate and intelligent cats, renowned for their social nature. Many enjoy being with people and are sometimes described as "extroverts". Often they bond strongly to a single person. Some Siamese are extremely vocal, with a loud, low-pitched voice.',
  'Singapura' => '',
  'Somali' => '',
  'Suphalak' => '',
  'Tonkinese' => '',
  'Turkish Angora' => ''
}

def simplify(breed)
  breed.slice(/[a-zA-Z\s-]+/).strip
end

def create_kitten(breed=Faker::Creature::Cat.unique.breed, name=Faker::Creature::Cat.unique.name,
  age=rand(1..12), origin=Faker::Creature::Cat.registry)

  Kitten.create(
    photo: simplify(breed).downcase.gsub(/[\s-]/, '_') + '.jpg',
    description: $breeds[breed],
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

$breeds.each_key { | breed |
  if breed != 'European Shorthair' && breed != 'Siamese'
    create_kitten(breed)
  end
}
