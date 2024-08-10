FROM ubuntu:20.04

# Install bash, tzdata deps
RUN apt-get update && apt-get install -y \
    bash \
    tzdata \
    && rm -rf /var/lib/apt/lists/*

# Set the timezone to IST during the build
ENV TZ="Asia/Jerusalem"
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Copy the script to the container
COPY entrypoint.sh /entrypoint.sh

# Make the script executable
RUN chmod +x /entrypoint.sh

# Set the entry point to the script
ENTRYPOINT ["/entrypoint.sh"]