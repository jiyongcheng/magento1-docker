FROM nginx:latest

# Make snakeoil certificates available
RUN apt-get update && \
        apt-get install -qy ssl-cert

# Add virtual host config for Magento
COPY magento.conf /etc/nginx/conf.d/default.conf