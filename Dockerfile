FROM ruby:2.7

# Install WPScan dependencies
RUN apt-get update && \
    apt-get install -y git && \
    gem install wpscan

# Set working directory
WORKDIR /app

# Copy your scan script or command here
CMD ["wpscan", "--url", "http://example.com", "--random-user-agent"]
