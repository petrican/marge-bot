## docker build --platform linux/arm64 -t gitlab.coinzilladev.com:5555/targetblank/targetblank-workspace:workspace_marge_custom .
##
## docker push gitlab.coinzilladev.com:5555/targetblank/targetblank-workspace:workspace_marge_custom


# Use an appropriate base image
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy the source code to the container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Set the entrypoint command
ENTRYPOINT ["python", "/app/marge/app.py"]