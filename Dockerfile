# Use a lightweight Python image with FFmpeg pre-installed
FROM ghcr.io/jrottenberg/ffmpeg-python:latest

# Set the working directory
WORKDIR /app

# Copy requirements and install Python dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Expose the application port
EXPOSE 8100

# Command to run the application
CMD ["uvicorn", "iptv_hdhr_poc:app", "--host", "0.0.0.0", "--port", "8100"]
