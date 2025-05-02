# Hugo Blog with Typo Theme

This is a Docker-based Hugo blog using the Typo theme. The setup provides a development environment with live reloading and easy content management.

## Prerequisites

- Docker
- Docker Compose

## Getting Started

1. Clone this repository:
```bash
git clone <your-repo-url>
cd <your-repo-name>
```

2. Start the development shell:
```bash
docker-compose run --rm dev
```

3. Inside the development shell, create a new Hugo site:
```bash
hugo new site . --force
```

4. Install the Typo theme:
```bash
git submodule add --depth=1 https://github.com/tomfran/typo.git themes/typo
```

5. Exit the development shell (Ctrl+D or type `exit`)

6. Start the Hugo server:
```bash
docker-compose up app
```

7. Visit `http://localhost:1313` in your browser to see your blog.

## Project Structure

- `content/` - Contains your blog posts and pages
- `layouts/` - Custom layouts (if any)
- `static/` - Static files like images, CSS, and JavaScript
- `hugo.toml` - Hugo configuration file
- `Dockerfile` - Docker configuration
- `docker-compose.yml` - Docker Compose configuration

## Development

### Interactive Development Shell

To get an interactive shell in the container:
```bash
docker-compose run --rm dev
```

This gives you access to all Hugo commands and tools.

### Hugo Server

To run the Hugo development server:
```bash
docker-compose up app
```

The development server includes:
- Live reloading
- Hot module replacement
- Development-specific settings

## Writing Posts

Create new posts in the `content/posts/` directory. Use the following front matter format:

```markdown
---
title: "Your Post Title"
date: "YYYY-MM-DD"
summary: "A brief summary"
description: "A longer description"
toc: true
readTime: true
autonumber: true
math: true
tags: ["tag1", "tag2"]
showTags: true
hideBackToTop: false
---
```

## Customization

- Edit `hugo.toml` to customize your blog's configuration
- Add custom layouts in the `layouts/` directory
- Add static files in the `static/` directory

## Building for Production

To build the static site for production:

```bash
docker-compose run --rm app --minify
```

The built site will be in the `public/` directory.

## License

This project is licensed under the MIT License - see the LICENSE file for details. 