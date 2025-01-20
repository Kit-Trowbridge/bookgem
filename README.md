# BookGem 📚

A Ruby on Rails application connecting book owners with borrowers, allowing them to lend and borrow rare books. ✨

---

## ⭐ Features

### 👥 Visitors Can:
- 🏠 Browse the landing page to understand the platform
- 📖 View all available books
- 🔍 See detailed book information and borrowing terms

---

### 🔐 Authenticated Users Can:

#### 📚 As Borrowers:
- 👀 View book details and borrowing terms
- ✍️ Create loan requests
- 📋 Track borrowed books history
- ✅ Mark books as returned
- ⭐ Leave reviews and ratings (optional)

#### 📖 As Book Owners:
- 📝 List books with descriptions, photos, and conditions
- 📋 Set borrowing terms
- 💬 Message borrowers (optional)
- 🗑️ Delete their book listings (optional)

---

## 🚀 Setup

1. **Clone the repository:**
   ```bash
   git clone https://github.com/yourusername/bookgem.git


2. **Install dependencies:**
   ```bash
    bundle install

3. **Setup database:**
   ```bash
    rails db:create
    rails db:migrate

4. **Start server:**
   ```bash
    rails server

## 🛣️ Routes

### Pages
- `GET /` — Home page

### Books
- `GET /books` — Show all books
- `GET /books/:id` — Show book details
- `GET /books/new` — New book form
- `POST /books` — Create book

### Loans
- `GET /loans` — Show loan history
- `GET /books/:id/loans/new` — New loan form
- `POST /books/:id/loans` — Create loan
- `GET /loans/:id/edit` — Edit loan
- `PATCH /loans/:id` — Update loan

---

## 💻 Tech Stack
- ⚡ **Ruby on Rails**
- 🗄️ **PostgreSQL**
- 🔒 **Devise** (Authentication)
- 📸 **Active Storage** (Image upload)


