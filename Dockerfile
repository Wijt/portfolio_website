# Stage 1: Build the Flutter web application
# We use Flutter 3.7.12 because your pubspec.yaml limits Dart SDK to <3.0.0
FROM ghcr.io/cirruslabs/flutter:3.7.12 AS build

# Set the working directory
WORKDIR /app

# Copy the project files
COPY pubspec.* ./
COPY lib ./lib
COPY web ./web
COPY assets ./assets

# Get dependencies
RUN flutter pub get

# Build the application for web with the canvaskit renderer (better performance) or html
# default is auto, usually fine.
RUN flutter build web --release

# Stage 2: Serve the application with Nginx
FROM nginx:alpine

# Copy the build output from the previous stage to the Nginx html directory
COPY --from=build /app/build/web /usr/share/nginx/html

# Expose port 80 for Dokploy/Traefik
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
