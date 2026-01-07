# Contributing to Testing Repository

Thank you for your interest in contributing to this project! We welcome contributions from everyone and appreciate your effort to help improve this repository.

## Table of Contents

- [Code of Conduct](#code-of-conduct)
- [Getting Started](#getting-started)
- [Development Setup](#development-setup)
- [How to Contribute](#how-to-contribute)
- [Coding Standards](#coding-standards)
- [Testing Guidelines](#testing-guidelines)
- [Commit Message Guidelines](#commit-message-guidelines)
- [Pull Request Process](#pull-request-process)
- [Reporting Issues](#reporting-issues)
- [Questions and Support](#questions-and-support)

## Code of Conduct

By participating in this project, you are expected to uphold our commitment to providing a welcoming and inclusive environment for everyone. Please be respectful, considerate, and professional in all interactions.

## Getting Started

1. **Fork the repository** to your own GitHub account
2. **Clone your fork** locally:
   ```bash
   git clone https://github.com/YOUR-USERNAME/testing.git
   cd testing
   ```
3. **Create a new branch** for your changes:
   ```bash
   git checkout -b feature/your-feature-name
   ```

## Development Setup

This is a Ruby project. To set up your development environment:

### Prerequisites

- Ruby (version 2.5 or higher recommended)
- Git

### Installation

1. Install dependencies (if any):
   ```bash
   bundle install
   ```
   If you don't have a Gemfile yet, you can skip this step.

2. Verify your setup by running the tests:
   ```bash
   ruby alpaca_test.rb
   ```

## How to Contribute

We welcome various types of contributions:

- **Bug fixes**: Help us fix issues in the codebase
- **New features**: Add new functionality to enhance the project
- **Documentation**: Improve or add documentation
- **Tests**: Add or improve test coverage
- **Code refactoring**: Improve code quality and maintainability

### Before You Start

- Check the [Issues](https://github.com/heyitsab/testing/issues) page to see if someone is already working on a similar feature or bug fix
- For major changes, please open an issue first to discuss what you would like to change
- Make sure your changes align with the project's goals and scope

## Coding Standards

Please follow these coding standards to maintain consistency:

### Ruby Style Guide

- Follow the [Ruby Style Guide](https://rubystyle.guide/)
- Use 2 spaces for indentation (not tabs)
- Keep lines to a reasonable length (80-120 characters)
- Use descriptive variable and method names
- Write clear and concise comments when necessary

### Code Quality

- **No debugging statements**: Remove all `puts` statements and `binding.pry` calls before submitting your PR
  - Our test suite checks for these and will fail if they are present
- **Keep it simple**: Write clean, readable code
- **DRY principle**: Don't Repeat Yourself - reuse code where appropriate
- **Single Responsibility**: Each method should do one thing well

### Documentation

- Add comments for complex logic
- Update documentation if you change functionality
- Include examples where helpful

## Testing Guidelines

All code changes should include appropriate tests:

### Running Tests

Run the test suite to verify your changes:

```bash
ruby alpaca_test.rb
```

### Writing Tests

- Write tests for new features and bug fixes
- Follow the existing test structure and naming conventions
- Ensure all tests pass before submitting your PR
- Test edge cases and error conditions

### Test Requirements

- Tests should be clear and descriptive
- Each test should test one specific behavior
- Use meaningful assertion messages
- Clean up any test data or state after tests run

## Commit Message Guidelines

Write clear and meaningful commit messages:

### Format

```
<type>: <short summary>

<optional detailed description>
```

### Types

- `feat`: A new feature
- `fix`: A bug fix
- `docs`: Documentation changes
- `style`: Code style changes (formatting, etc.)
- `refactor`: Code refactoring
- `test`: Adding or updating tests
- `chore`: Maintenance tasks

### Examples

```
feat: add method to calculate wool growth rate

fix: correct age validation in Alpaca constructor

docs: update README with usage examples

test: add tests for feed method
```

### Best Practices

- Use the imperative mood ("add feature" not "added feature")
- Keep the first line under 50 characters
- Capitalize the first letter
- No period at the end of the summary
- Provide additional context in the body if needed

## Pull Request Process

1. **Update your branch** with the latest changes from main:
   ```bash
   git fetch origin
   git rebase origin/main
   ```

2. **Run all tests** to ensure nothing is broken:
   ```bash
   ruby alpaca_test.rb
   ```

3. **Verify code quality**:
   - Remove any debugging statements (`puts`, `binding.pry`)
   - Check for proper formatting and style
   - Ensure all comments are clear and necessary

4. **Push your changes** to your fork:
   ```bash
   git push origin feature/your-feature-name
   ```

5. **Create a Pull Request**:
   - Go to the original repository on GitHub
   - Click "New Pull Request"
   - Select your fork and branch
   - Fill out the PR template with:
     - Clear description of changes
     - Why the changes are needed
     - How to test the changes
     - Any related issues

6. **Respond to feedback**:
   - Address review comments promptly
   - Make requested changes in new commits
   - Update your PR with additional context if needed

7. **Wait for approval**:
   - At least one maintainer review is required
   - All CI checks must pass
   - Once approved, a maintainer will merge your PR

## Reporting Issues

If you find a bug or have a suggestion:

### Before Creating an Issue

- Search existing issues to avoid duplicates
- Collect relevant information about the problem

### Creating an Issue

Include the following information:

- **Clear title**: Briefly describe the issue
- **Description**: Detailed explanation of the problem or suggestion
- **Steps to reproduce** (for bugs):
  1. What you did
  2. What you expected to happen
  3. What actually happened
- **Environment details**:
  - Ruby version
  - Operating system
  - Any relevant configuration
- **Code samples**: Include minimal code to reproduce the issue
- **Error messages**: Include full error messages and stack traces

### Issue Labels

We use labels to categorize issues:

- `bug`: Something isn't working
- `enhancement`: New feature or request
- `documentation`: Documentation improvements
- `good first issue`: Good for newcomers
- `help wanted`: Extra attention is needed

## Questions and Support

If you have questions or need help:

- **Check existing issues**: Your question might already be answered
- **Open a new issue**: Use the issue tracker for questions
- **Be patient**: Maintainers will respond as soon as possible
- **Be respectful**: Remember that maintainers are often volunteers

## Recognition

All contributors will be recognized for their contributions. Thank you for making this project better!

---

**Happy Contributing!** 🎉

We appreciate your time and effort in contributing to this project. Every contribution, no matter how small, makes a difference!
