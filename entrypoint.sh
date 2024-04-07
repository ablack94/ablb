#!/bin/bash

# Make our certificate
cat /certs/fullchain.pem /certs/privkey.pem > /certs/site.pem

exec "$@"
