# Use a light version of Python
FROM python:3.9-slim

# Create a folder for our app inside the container
WORKDIR /app

# Copy your local files (app.py, etc.) into that folder
COPY . .

# Expose the port your app runs on
EXPOSE 5000

# The command to start your app
CMD ["python", "app.py"]
