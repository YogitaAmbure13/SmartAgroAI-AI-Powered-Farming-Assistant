# Use Python 3.9
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy the required files
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy all project files
COPY . .

# Expose the Flask app port (change if needed)
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
