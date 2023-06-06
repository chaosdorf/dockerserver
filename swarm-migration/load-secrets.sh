#!/bin/sh

# vorher: Dienste stoppen (disable-services.sh)
# vorher: Container löschen (remove-container.sh)
# vorher: Volumes wegkopieren: cp -r /var/lib/docker/volumes pre-swarm-volumes
# vorher: docker swarm init
# vorher: docker network create --driver overlay traefik_net

docker secret create DASHING_AUTH_TOKEN dashpi-secrets/DASHING_AUTH_TOKEN
docker secret create TWITTER_ACCESS_TOKEN dashpi-secrets/TWITTER_ACCESS_TOKEN
docker secret create TWITTER_ACCESS_TOKEN_SECRET dashpi-secrets/TWITTER_ACCESS_TOKEN_SECRET
docker secret create TWITTER_CONSUMER_KEY dashpi-secrets/TWITTER_CONSUMER_KEY
docker secret create TWITTER_CONSUMER_SECRET dashpi-secrets/TWITTER_CONSUMER_SECRET
docker secret create DASHPI_SENTRY_DSN dashpi-secrets/SENTRY_DSN

docker secret create FFTALKS_SENTRY_DSN fftalks-secrets/FFTALKS_SENTRY_DSN
docker secret create INFO_BEAMER_API_KEY fftalks-secrets/INFO_BEAMER_API_KEY

docker secret create TELEMETE_API_KEY telemete-secrets/TELEMETE_API_KEY
docker secret create TELEMETE_SENTRY_DSN telemete-secrets/TELEMETE_SENTRY_DSN

docker secret create MPD2MQTT_SENTRY_DSN mpd2mqtt-secrets/SENTRY_DSN

docker secret create LABELLO_SENTRY_DSN labello-secrets/SENTRY_DSN

# nachher: cd docker-stacks && ./deploy-stacks.sh
# nachher: $HOME aufräumen
