
build:
	docker build -t ablb:latest .

start:
	docker run \
		-d \
		-v /opt/ablack/etc/letsencrypt/live/ablack94.dev/privkey.pem:/certs/privkey.pem \
		-v /opt/ablack/etc/letsencrypt/live/ablack94.dev/fullchain.pem:/certs/fullchain.pem \
		-p 80:80 \
		-p 443:443 \
		--name=ablb \
		ablb:latest

stop:
	docker kill ablb
	docker container rm -f ablb

