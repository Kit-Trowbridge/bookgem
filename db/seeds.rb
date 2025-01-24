# Create users
users = User.create!([
  { name: "Alice", email: "alice@example.com", password: "password" },
  { name: "Bob", email: "bob@example.com", password: "password" },
  { name: "Charlie", email: "charlie@example.com", password: "password" },
  { name: "Diana", email: "diana@example.com", password: "password" }
])

categories = [
  'Fiction',
  'Non-Fiction',
  'Rare Editions',
  'First Editions',
  'Signed Copies'
]

condition = ["Like New", "Very Good", "Good", "Fair"]

# Create books
Book.create!([
  { title: "The Great Adventure", author: "John Smith", price: 19.99, category: categories.sample, condition: condition.sample, user: users.sample },
  { title: "Space Chronicles", author: "Jane Doe", price: 24.99, category: categories.sample, condition: condition.sample, user: users.sample },
  { title: "The World We Know", author: "Albert Writer", price: 14.99, category: categories.sample, condition: condition.sample, user: users.sample },
  { title: "Dragon Tales", author: "E. L. Fantasy", price: 29.99, category: categories.sample, condition: condition.sample, user: users.sample },
  { title: "Murder Mystery", author: "M. Detective", price: 12.99, category: categories.sample, condition: condition.sample, user: users.sample }
])

puts "Seeded #{User.count} users and #{Book.count} books."
