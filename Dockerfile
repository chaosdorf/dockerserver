FROM busybox
COPY html /var/www
CMD ["httpd", "-f", "-h", "/var/www"]
