FROM n8nio/n8n:latest

# Create a safe directory for custom scripts
USER root
WORKDIR /usr/local/bin

# Copy and set permissions
COPY docker-entrypoint.sh ./docker-entrypoint.sh
RUN chmod +x ./docker-entrypoint.sh

# Switch back to default n8n user
USER node

# Set entrypoint
ENTRYPOINT ["tini", "--", "/usr/local/bin/docker-entrypoint.sh"]
