# Task Manager

A full-stack web application built with Ruby on Rails, used as a hands-on project to learn core Ruby and Rails concepts from the ground up.

## What This Covers

| Concept | Description |
|---|---|
| **Rails MVC** | Models, Views, Controllers, routing |
| **SQLite / PostgreSQL** | Relational database, migrations, schema design |
| **Authentication** | User sign up, login, sessions, password hashing |
| **CRUD** | Create, Read, Update, Delete with full UI |
| **Associations** | belongs_to, has_many, has_many through |
| **Hotwire** | Turbo + Stimulus for dynamic UI without full-page reloads |
| **REST API** | JSON endpoints, versioning, token auth |
| **Docker** | Containerizing the app for consistent environments |
| **Production** | Environment config, credentials, deployment concepts |

## Stack

- **Ruby** 3.3.6
- **Rails** 7.2
- **SQLite** (development) → **PostgreSQL** (production)
- **Hotwire** (Turbo + Stimulus)
- **Puma** web server

## Code Quality

- **RuboCop** + **rubocop-rails** for linting and formatting
- **GitHub Actions** runs RuboCop on every push to `main`
- Run locally: `bundle exec rubocop`
- Auto-fix: `bundle exec rubocop --autocorrect`

## Git Conventions

Commits follow the [Conventional Commits](https://www.conventionalcommits.org) spec:

```
type(scope): description

Types: feat, fix, docs, style, refactor, perf, test, build, ci, chore, revert
```

Git hooks (in `.githooks/`) enforce this automatically:

| Hook | When | What |
|---|---|---|
| `commit-msg` | Every commit | Validates conventional commit format |
| `pre-commit` | Every commit | Runs RuboCop on staged `.rb` files |
| `pre-push` | Push to `main` | Runs full RuboCop on the codebase |

## Getting Started

```bash
bin/setup        # installs gems, configures git hooks, sets up database
bin/rails server # start the server
```

Visit `http://localhost:3000`
