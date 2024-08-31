# Stage 1: Create index.html
FROM alpine:latest as builder

# Create the directory where the index.html will be placed
RUN mkdir -p /usr/share/nginx/html

# Create index.html
RUN echo "<p>Hello World</p>" > /usr/share/nginx/html/index.html

# Stage 2: Nginx setup
FROM nginx:alpine

# Copy the index.html from the builder stage
COPY --from=builder /usr/share/nginx/html/index.html /usr/share/nginx/html/index.html

# Print "starting nginx" and run Nginx in the foreground
CMD echo "starting nginx" && nginx -g 'daemon off;'

