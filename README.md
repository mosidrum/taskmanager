# Task Manager

A full-stack web application built with Ruby on Rails, used as a hands-on project to learn core Ruby and Rails concepts from the ground up.

## What This Covers

| Concept | Description |
|---|---|
| **Rails MVC** | Models, Views, Controllers, routing |
| **PostgreSQL** | Relational database, migrations, schema design |
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

## Getting Started

```bash
bundle install
rails db:create db:migrate
rails server
```

Visit `http://localhost:3000`
