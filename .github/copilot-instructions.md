# Copilot Instructions for ror-cms

## Project Overview
This is a Ruby on Rails CMS (Content Management System) project. The goal is to build a modern, scalable content management system using Ruby on Rails framework.

## Technology Stack
- **Framework**: Ruby on Rails
- **Language**: Ruby
- **License**: MIT License (Copyright 2025 Charlie)

## Coding Guidelines

### Ruby and Rails Best Practices
- Follow Ruby community style guide (RuboCop standards)
- Use Rails conventions and idioms
- Prefer RESTful routing and resource-based controllers
- Use ActiveRecord associations and validations appropriately
- Follow the "Convention over Configuration" principle
- Use Rails generators when appropriate for consistency

### Code Style
- Use 2 spaces for indentation (Ruby convention)
- Follow Ruby naming conventions:
  - snake_case for methods and variables
  - CamelCase for classes and modules
  - SCREAMING_SNAKE_CASE for constants
- Keep methods small and focused (single responsibility principle)
- Use meaningful variable and method names
- Avoid long parameter lists; use keyword arguments when appropriate

### Security Practices
- Always use strong parameters in controllers
- Sanitize user input to prevent XSS attacks
- Use parameterized queries to prevent SQL injection (ActiveRecord does this by default)
- Implement proper authentication and authorization
- Keep sensitive data (API keys, passwords) in environment variables or Rails credentials
- Use Rails' built-in CSRF protection
- Validate and sanitize file uploads
- Use secure session handling

## Testing Requirements
- Write tests for new features and bug fixes
- Follow Rails testing conventions:
  - Use RSpec or Minitest (whichever is configured in the project)
  - Write unit tests for models
  - Write integration tests for controllers
  - Write system/feature tests for user-facing functionality
- Aim for meaningful test coverage, especially for business logic
- Use factories (FactoryBot) or fixtures for test data
- Mock external dependencies in tests

## Documentation
- Add comments for complex business logic
- Document public API methods with YARD-style comments
- Keep README.md updated with setup instructions and project information
- Document configuration steps and environment variables
- Add inline documentation for non-obvious code decisions

## Database and Migrations
- Always create reversible migrations
- Include appropriate indexes for foreign keys and frequently queried columns
- Use database-level constraints where appropriate
- Test migrations both up and down
- Keep migrations small and focused

## Git Workflow
- Write clear, descriptive commit messages
- Keep commits atomic and focused
- Follow conventional commit format when possible
- Don't commit sensitive data or credentials
- Keep the repository clean (use .gitignore for build artifacts, logs, etc.)

## Additional Guidelines
- Prefer using Rails helpers and built-in methods over custom implementations
- Keep controllers thin, move business logic to models or service objects
- Use concerns for shared behavior across models or controllers
- Implement proper error handling and logging
- Consider performance implications of N+1 queries
- Use caching strategies where appropriate for better performance
