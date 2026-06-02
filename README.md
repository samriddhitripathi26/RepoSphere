# RepoSphere

**A unified repository intelligence dashboard for GitHub and Forgejo ecosystems.**

RepoSphere helps developers, maintainers, and teams monitor repositories, track development activity, review project health, and manage issues from a single interface.

---

## Overview

Managing multiple repositories across organizations can quickly become overwhelming. RepoSphere centralizes repository management by bringing together project insights, pull requests, issues, security findings, workflow activity, and analytics into one dashboard.

Whether you're maintaining open-source projects or coordinating development across teams, RepoSphere provides a clear view of what requires attention.

---

## Key Features

### Repository Explorer

Browse repositories with detailed information including:

* Repository descriptions
* Programming languages
* Star and fork counts
* Open issues
* Recent activity
* Visibility status
* Repository health indicators

### Issue & Pull Request Management

Track issues and pull requests across multiple repositories without switching between projects.

Features include:

* Cross-repository filtering
* Status tracking
* Organization-based filtering
* Quick triage workflows

### Security Center

Stay informed about repository security through:

* Dependabot alerts
* Code scanning findings
* Security summaries
* Risk visibility across projects

### Insights Dashboard

Generate actionable insights based on repository activity:

* Projects needing attention
* Inactive repositories
* Security concerns
* Contribution trends
* Development opportunities

### Activity Digest

Generate daily project summaries covering:

* New issues
* Pull requests
* Repository growth
* Traffic changes
* Contributor activity

Optional AI-powered summaries are available when an OpenAI API key is configured.

### Project Board

Visual Kanban-style workflow management with customizable stages:

* Backlog
* To Do
* In Progress
* Review
* Ready
* Completed

---

## Repository Analytics

Each repository includes detailed analytics such as:

### General Information

* Repository owner
* License details
* Default branch
* Last updated date

### Development Activity

* Pull requests
* Issues
* Releases
* Contributors

### Security & Quality

* Vulnerability alerts
* Code scanning results
* Dependency health

### Traffic Metrics

* Repository views
* Clone statistics
* Visitor analytics
* Popular content

### Community Insights

* Fork analysis
* Repository mentions
* Dependent projects
* Contributor rankings

---

## System Architecture

RepoSphere is built using a modern full-stack architecture consisting of two primary components.

### Backend

A TypeScript-based Node.js server responsible for:

* GitHub authentication
* API aggregation
* Response caching
* Data processing
* Security handling

Authentication uses GitHub Device Flow and stores tokens locally without exposing them to the browser.

### Frontend

A React-powered single-page application that provides:

* Interactive dashboards
* Real-time project insights
* Repository management views
* Analytics visualizations

---

## Technology Stack

| Category    | Technology                        |
| ----------- | --------------------------------- |
| Language    | TypeScript                        |
| Frontend    | React 19, Vite                    |
| Backend     | Node.js                           |
| Testing     | Vitest                            |
| Build Tools | TypeScript Compiler, Concurrently |

---

## Requirements

Before running RepoSphere, ensure you have:

* Node.js 20 or newer
* A GitHub OAuth Application with Device Flow enabled
* (Optional) OpenAI API Key for AI-generated summaries

---

## Installation

Clone the repository and install dependencies:

```bash
npm install
```

Start the development environment:

```bash
npm run dev
```

Open:

```text
http://127.0.0.1:5173
```

---

## Production Build

Build the application:

```bash
npm run build
```

Run the production server:

```bash
npm start
```

Access the application at:

```text
http://127.0.0.1:8765
```

---

## Docker Deployment

RepoSphere supports containerized deployment using Docker and Docker Compose.

```bash
docker compose up -d --build
```

Persistent application data and authentication tokens are stored in dedicated Docker volumes.

---

## Authentication

RepoSphere supports multiple authentication methods:

### Device Flow (Recommended)

Secure browser-based GitHub authentication.

### GitHub CLI

Reuse an existing GitHub CLI login session.

### Personal Access Token

Authenticate using a GitHub Personal Access Token for automated environments.

---

## Testing

Run unit tests:

```bash
npm test
```

Run type checking:

```bash
npm run typecheck
```

---

## Contributing

Contributions are welcome.

Before submitting changes:

1. Follow project coding standards.
2. Run tests locally.
3. Verify builds complete successfully.
4. Open a pull request with a clear description.

---

## License

Released under the MIT License.
