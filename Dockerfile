# Dockerfile for custom EMQX deployment
FROM emqx/emqx:5.0.26

# Salin konfigurasi custom
COPY emqx.conf /opt/emqx/etc/emqx.conf

# Ekspos port MQTT (1883) dan Dashboard (8081)
EXPOSE 1883 8081

# Jalankan EMQX
CMD ["/opt/emqx/bin/emqx", "start", "-d"]