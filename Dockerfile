FROM n8nio/n8n:latest

# Use root to copy scripts safely
USER root
WORKDIR /usr/local/bin

COPY docker-entrypoint.sh ./docker-entrypoint.sh
RUN chmod +x ./docker-entrypoint.sh

# Switch to default n8n user
USER node

# Run n8n with tunnel so public URL works
ENTRYPOINT ["tini", "--", "/usr/local/bin/docker-entrypoint.sh", "--tunnel"]
