# ror-cms
Ruby on Rails CMS - A Modern Content Management System with Enhanced UI/UX

## Description
This is a feature-rich Ruby on Rails CMS (Content Management System) built to demonstrate best practices in Rails development. It provides full CRUD operations with model validations, search functionality, filtering, and a modern, responsive user interface.

## Features

### Core Functionality
- ✅ Create new articles with title, content, author, and publish status
- ✅ View all articles in an elegant card-based grid layout
- ✅ View individual article details with formatted content
- ✅ Edit existing articles with pre-populated forms
- ✅ Delete articles with confirmation dialogs
- ✅ RESTful API with JSON responses

### Enhanced Features
- ✅ **Model Validations**: Ensures data integrity with presence and length validations
- ✅ **Search Functionality**: Search articles by title, content, or author
- ✅ **Status Filtering**: Filter articles by Published/Draft status
- ✅ **Visual Status Badges**: Color-coded badges for published and draft articles
- ✅ **Scopes**: Published, unpublished, and recent article scopes
- ✅ **Modern UI/UX**: Clean, professional design with responsive layout
- ✅ **Flash Messages**: User-friendly success and error notifications
- ✅ **Confirmation Dialogs**: Safety prompts before destructive actions

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

## Screenshots

### Articles Index Page
Modern card-based layout with search and filter functionality:

![Articles Index](https://github.com/user-attachments/assets/c50e5a11-4b90-4320-a458-0c32b46b70f9)

### Search Functionality
Search articles by title, content, or author:

![Search Results](https://github.com/user-attachments/assets/2b552144-1cd1-435c-a904-e7aee2593e6a)

### Filter by Status
Filter articles to show only Published or Draft articles:

![Filter Drafts](https://github.com/user-attachments/assets/4e4c63dd-4329-4897-a516-10565c628e65)

### Article Detail View
Clean article detail page with metadata and action buttons:

![Article Detail](https://github.com/user-attachments/assets/ddd3b629-8394-48c8-a50a-c27d8000af32)

### Create New Article
User-friendly form with placeholders and styling:

![New Article Form](https://github.com/user-attachments/assets/a59df087-7323-4f3c-ac5d-d769125f4109)

### Form Validation
Comprehensive validation with helpful error messages:

![Validation Errors](https://github.com/user-attachments/assets/c5de2526-f01d-48f7-92e2-3ce24908a9ed)

### Edit Article
Edit existing articles with pre-populated data:

![Edit Article](https://github.com/user-attachments/assets/98ce06c8-9ca6-4f9f-bdba-7dd79baed3fd)

## Usage

### Managing Articles

#### View All Articles
- Navigate to the home page (/) to see all articles
- Articles are displayed in a card-based grid layout
- The most recent articles appear first

#### Search Articles
1. Enter keywords in the search box at the top of the articles page
2. Click "Search" to filter articles
3. The search looks through titles, content, and authors
4. Click "Clear Filters" to return to all articles

#### Filter Articles by Status
1. Use the status dropdown to select:
   - **All Articles**: Shows everything
   - **Published**: Shows only published articles
   - **Drafts**: Shows only unpublished articles
2. Click "Search" to apply the filter

#### Create New Article
1. Click "New Article" in the navigation bar
2. Fill in the form fields:
   - **Title**: Must be 3-200 characters
   - **Content**: Must be at least 10 characters
   - **Author**: Must be 2-100 characters
   - **Published**: Check to publish immediately, uncheck to save as draft
3. Click "Create Article"

#### View Article Details
- Click "View Article" on any article card
- See the full content with metadata (author, status, creation date)

#### Edit Article
1. Click "Edit" on any article card, or "Edit this article" on the detail page
2. Modify the desired fields
3. Click "Update Article"

#### Delete Article
1. View the article detail page
2. Click "Delete this article"
3. Confirm the deletion in the dialog

### Test Account Data

The system comes pre-seeded with sample articles:

1. **Welcome to our CMS** (Published)
   - Author: Admin
   - Demonstrates the basic functionality

2. **Getting Started with Rails** (Published)
   - Author: John Doe
   - Technical content example

3. **Draft Article** (Draft)
   - Author: Jane Smith
   - Example of an unpublished article

4. **Test Account Login Guide** (Published)
   - Author: Admin
   - Guide article created during testing

## Model Validations

The Article model includes the following validations:

- **Title**: Required, 3-200 characters
- **Content**: Required, minimum 10 characters
- **Author**: Required, 2-100 characters
- **Published**: Boolean field (defaults to false)

## API Endpoints

### REST API
- `GET /articles.json` - List all articles
- `GET /articles/:id.json` - Show specific article
- `POST /articles.json` - Create new article
- `PATCH/PUT /articles/:id.json` - Update article
- `DELETE /articles/:id.json` - Delete article

Example API usage:
```bash
# List all articles
curl http://localhost:3000/articles.json

# Get specific article
curl http://localhost:3000/articles/1.json

# Create new article
curl -X POST http://localhost:3000/articles.json \
  -H "Content-Type: application/json" \
  -d '{"article":{"title":"API Test","content":"Content from API","author":"API User","published":true}}'
```

## Running Tests

Run the test suite:
```bash
bin/rails test
```

Run specific test files:
```bash
bin/rails test test/models/article_test.rb
bin/rails test test/controllers/articles_controller_test.rb
```

## Code Quality

### Linting
The project uses RuboCop for code style enforcement:
```bash
bin/rubocop
```

### Security Scanning
Static security analysis with Brakeman:
```bash
bin/brakeman
```

## Technology Stack

- **Framework**: Ruby on Rails 8.1.1
- **Language**: Ruby 3.2.3
- **Database**: SQLite3
- **Asset Pipeline**: Propshaft
- **JavaScript**: Stimulus, Turbo
- **Styling**: Custom CSS (no frameworks)
- **Testing**: Minitest

## Project Structure

```
ror-cms/
├── app/
│   ├── controllers/       # Application controllers
│   ├── models/           # Data models with validations
│   ├── views/            # ERB view templates
│   └── assets/
│       └── stylesheets/  # Custom CSS
├── config/               # Application configuration
├── db/                   # Database schema and migrations
├── test/                 # Test suite
└── public/              # Static assets
```

## License
This project is licensed under the MIT License - see the LICENSE file for details.

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## Support

For issues, questions, or contributions, please open an issue on the GitHub repository.

---

**Built with ❤️ using Ruby on Rails**

