# Use Python 3.11 as base image
FROM python:3.11

# Set working directory inside container
WORKDIR /app

# Copy requirements.txt and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy all the application files to the container
COPY . .

# Expose port 5000 to allow traffic
EXPOSE 5000

# Run the Flask app
CMD ["python", "app.py"]
