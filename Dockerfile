FROM haproxy:2.3

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
COPY --chmod=777 entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["haproxy", "-f", "/usr/local/etc/haproxy/haproxy.cfg"]
