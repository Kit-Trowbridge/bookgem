# Create users
users = User.create!([
  { name: "Alice", email: "alice@example.com", password: "password" },
  { name: "Bob", email: "bob@example.com", password: "password" },
  { name: "Charlie", email: "charlie@example.com", password: "password" },
  { name: "Diana", email: "diana@example.com", password: "password" }
])

# Create books
Book.create!([
  { title: "The Great Adventure", author: "John Smith", price: 19.99, category: "Fiction", user: users.sample },
  { title: "Space Chronicles", author: "Jane Doe", price: 24.99, category: "Science Fiction", user: users.sample },
  { title: "The World We Know", author: "Albert Writer", price: 14.99, category: "Nonfiction", user: users.sample },
  { title: "Dragon Tales", author: "E. L. Fantasy", price: 29.99, category: "Fantasy", user: users.sample },
  { title: "Murder Mystery", author: "M. Detective", price: 12.99, category: "Mystery", user: users.sample }
])

puts "Seeded #{User.count} users and #{Book.count} books."
