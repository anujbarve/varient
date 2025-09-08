# Use official MySQL image
FROM mysql:8.0

# Set environment variables
ENV MYSQL_ROOT_PASSWORD=rootpassword
ENV MYSQL_DATABASE=mydatabase
ENV MYSQL_USER=user
ENV MYSQL_PASSWORD=password

# Expose default MySQL port
EXPOSE 3306

# Optional: copy initial SQL files (if any)
# COPY ./init.sql /docker-entrypoint-initdb.d/
