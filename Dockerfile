# Use the official Ruby image as a base
FROM ruby:2.7

# Install necessary packages and dependencies
RUN apt-get update && \
    apt-get install -y curl git build-essential && \
    gem update --system && \
    gem install ffi -v 1.17.0 && \
    gem install wpscan

# Set the working directory
WORKDIR /app

# Download the rockyou.txt password file
RUN curl -L -o rockyou.txt https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt

# Set the CMD to run WPScan with parameters
CMD ["./run_wpscan.sh"]
