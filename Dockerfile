# Multi-stage build for Flutter Web
FROM debian:latest AS base

# Install dependencies
RUN apt-get update && apt-get install -y \
    curl \
    git \
    unzip \
    xz-utils \
    zip \
    libglu1-mesa \
    && rm -rf /var/lib/apt/lists/*

# Set up Flutter
ENV FLUTTER_HOME="/opt/flutter"
ENV FLUTTER_VERSION="3.19.3"
ENV PATH="$FLUTTER_HOME/bin:$PATH"

RUN git clone https://github.com/flutter/flutter.git $FLUTTER_HOME
WORKDIR $FLUTTER_HOME
RUN git fetch && git checkout $FLUTTER_VERSION

# Fix Flutter repository ownership
RUN git config --global --add safe.directory $FLUTTER_HOME

# Pre-download Flutter artifacts
RUN flutter doctor
RUN flutter config --no-analytics

# Build stage
FROM base AS builder

WORKDIR /app
COPY . .

# Create non-root user
RUN useradd -m -s /bin/bash flutter
RUN chown -R flutter:flutter /app

# Fix Flutter repository ownership for builder stage
RUN git config --global --add safe.directory $FLUTTER_HOME

# Switch to non-root user
USER flutter

# Get dependencies
RUN flutter pub get

# Build for web with optimizations
RUN flutter build web \
    --release \
    --web-renderer canvaskit \
    --dart-define=FLUTTER_WEB_USE_SKIA=true \
    --tree-shake-icons

# Production stage
FROM nginx:alpine AS production

# Copy built app
COPY --from=builder /app/build/web /usr/share/nginx/html

# Copy custom nginx config
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port
EXPOSE 80

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
    CMD curl -f http://localhost/ || exit 1

CMD ["nginx", "-g", "daemon off;"] 