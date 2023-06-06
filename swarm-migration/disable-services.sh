#!/bin/sh

systemctl disable --now certbot.timer
systemctl disable --now nginx.service

systemctl disable --now chaospizza.target
systemctl disable --now chaospizza_web.service
systemctl disable --now chaospizza_postgres_backup.service
systemctl disable --now chaospizza_postgresql.service

systemctl disable --now dashpi.service
systemctl disable --now fftalks.service
systemctl disable --now labello.service

systemctl disable --now mete.target
systemctl disable --now mete_backend.service
systemctl disable --now mete_db-backup.service
systemctl disable --now mete_db.service

systemctl disable --now mpd2mqtt.service
systemctl disable --now prittstift.service
systemctl disable --now pulseweb.service
# shairplay bleibt!
systemctl disable --now telemete.service
systemctl disable --now ympd.service
