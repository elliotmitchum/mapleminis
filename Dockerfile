FROM klakegg/hugo:ext-debian

WORKDIR /src

# Install git and other useful tools for development
RUN apt-get update && apt-get install -y \
    git \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Create necessary directories
RUN mkdir -p /src/content /src/layouts /src/static

COPY . .

# Install the Typo theme
RUN git submodule update --init --recursive

# Expose the default Hugo port
EXPOSE 1313

# Default command - can be overridden by docker-compose
CMD ["server", "--bind", "0.0.0.0", "--baseURL", "http://localhost:1313"] 