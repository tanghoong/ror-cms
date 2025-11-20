# ror-cms
Ruby on Rails CMS - A basic CRUD Content Management System

## Description
This is a basic Ruby on Rails CMS (Content Management System) built to demonstrate CRUD operations. It allows you to create, read, update, and delete articles.

## Features
- Create new articles with title, content, author, and publish status
- View all articles in a list
- View individual article details
- Edit existing articles
- Delete articles
- RESTful API with JSON responses

## Prerequisites
- Ruby 3.2.3 or higher
- Rails 8.1.1 or higher
- SQLite3

## Setup Instructions

1. Clone the repository:
```bash
git clone https://github.com/tanghoong/ror-cms.git
cd ror-cms
```

2. Install dependencies:
```bash
bundle install
```

3. Set up the database:
```bash
bin/rails db:create
bin/rails db:migrate
bin/rails db:seed
```

4. Start the Rails server:
```bash
bin/rails server
```

5. Visit http://localhost:3000 in your browser

## Usage

### Managing Articles
- **View all articles**: Navigate to the home page (/)
- **Create new article**: Click "New article" button
- **View article**: Click "Show this article" on any article
- **Edit article**: Click "Edit this article" on the article show page
- **Delete article**: Click "Destroy this article" on the article show page

### API Endpoints
- `GET /articles.json` - List all articles
- `GET /articles/:id.json` - Show specific article
- `POST /articles.json` - Create new article
- `PATCH/PUT /articles/:id.json` - Update article
- `DELETE /articles/:id.json` - Delete article

## Running Tests
```bash
bin/rails test
```

## License
This project is licensed under the MIT License - see the LICENSE file for details.

