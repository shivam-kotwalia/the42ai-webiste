.PHONY: dev build css css-watch clean

# Development: run Hugo server and Tailwind watcher in parallel
dev:
	@echo "Starting development server..."
	@make css-watch & hugo server --buildDrafts --disableFastRender

# Production build
build:
	./tailwindcss -i ./assets/css/main.css -o ./static/css/style.css --minify
	hugo --minify

# Compile CSS once
css:
	./tailwindcss -i ./assets/css/main.css -o ./static/css/style.css --minify

# Watch CSS changes
css-watch:
	./tailwindcss -i ./assets/css/main.css -o ./static/css/style.css --watch

# Clean build artifacts
clean:
	rm -rf public/ static/css/style.css
