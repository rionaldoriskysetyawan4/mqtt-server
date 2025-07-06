FROM emqx/emqx:5.0.26

# Salin konfigurasi custom
COPY emqx.conf /opt/emqx/etc/emqx.conf

EXPOSE 1883 8081

CMD ["/opt/emqx/bin/emqx", "start", "-d"]
