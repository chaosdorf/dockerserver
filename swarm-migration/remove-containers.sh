#!/bin/sh

docker rm chaospizza_web_1
docker rm chaospizza_postgres_backup_1
docker rm chaospizza_postgresql_1

docker rm dashpi
docker rm fftalks
docker rm labello

docker rm mete_backend_1
docker rm mete_db-backup_1
docker rm mete_db_1

docker rm mpd2mqtt
docker rm prittstift
docker rm pulseweb
# shairplay bleibt!
docker rm telemete
docker rm ympd
