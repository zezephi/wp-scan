# Use the official Ruby image with a compatible version
FROM ruby:3.0

# Install necessary packages and dependencies
RUN apt-get update && \
    apt-get install -y curl git build-essential && \
    gem install wpscan

# Set the working directory
WORKDIR /app

# Download the rockyou.txt password file
RUN curl -L -o rockyou.txt https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt

# Set the CMD to run WPScan with parameters
CMD ["./run_wpscan.sh"]
