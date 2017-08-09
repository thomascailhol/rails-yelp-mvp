puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:           "Epicure au Bristol",
    address:        "112 rue du Fg St-Honoré 75008 Paris",
    phone_number:   "06 06 06 06 06",
    category:       "italian"
  },
  {
    name:           "La truffière",
    address:        "4 rue Blainville 75005 Paris",
    phone_number:   "06 06 06 06 06",
    category:       "french"
  },
  {
    name:           "Le pré catelan",
    address:        "route de Suresnes 75016 Paris",
    phone_number:   "06 06 06 06 06",
    category:       "japanese"
  },
    {
    name:           "Pizza Nico",
    address:        "cours balguerie",
    phone_number:   "06 06 06 06 06",
    category:       "italian"
  },
    {
    name:           "Bocca a Bocca",
    address:        "rue notre dame",
    phone_number:   "06 06 06 06 06",
    category:       "italian"
  }
]

puts 'Creating reviews...'
review_attributes = [
  {
    content: "This is an amazing restaurant",
    rating: 5,
    restaurant_id: 1
  },
  {
    content: "This is an shitty restaurant",
    rating: 1,
    restaurant_id: 2
  },
  {
    content: "This is an ok restaurant",
    rating: 3,
    restaurant_id: 3
  },
  {
    content: "Pas ouf",
    rating: 2,
    restaurant_id: 4
  },
  {
    content: "Super !",
    rating: 5,
    restaurant_id: 5
  }
]
Restaurant.create!(restaurants_attributes)
Review.create!(review_attributes)
puts 'Finished!'