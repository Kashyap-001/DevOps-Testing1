# Use an official Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy dependencies and install them
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your app code
COPY . .

# Ensure uvicorn listens on 0.0.0.0 so it's accessible outside the container
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]
