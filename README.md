# ror-cms

Ruby on Rails CMS

## Setup

This Rails application uses Slim templating and Tailwind CSS.

### Initial Setup

1. Install dependencies:
   ```bash
   bundle install
   ```

2. Setup Tailwind CSS (first-time setup; already applied in repo):
   ```bash
   bin/rails tailwindcss:install
   ```

3. Start the development server:
   ```bash
   rails s
   ```

### Development with Tailwind

To run the app with automatic Tailwind rebuilding on changes:

```bash
bin/dev
```

This starts both the Rails server and the Tailwind CSS watcher.

### Verifying Tailwind

To verify Tailwind is working, add a sample class to any view:

```html
<div class="p-6 text-xl text-blue-600">Hello Tailwind!</div>
```

The styles should be applied when you view the page.

### Generator Configuration

This app is configured to use Slim templates by default for any new scaffolds or views:

```bash
rails g scaffold Post title:string
```

This will generate Slim templates instead of ERB.

