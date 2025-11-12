#!/usr/bin/with-contenv bashio

USER=$(bashio::config 'user')
PASSWORD=$(bashio::config 'password')
REMOTE=$(bashio::config 'remote')
REMOTE_PORT=$(bashio::config 'remote_port')
LOCAL_PORT=$(bashio::config 'local_port')

ssh -R ${REMOTE_PORT}:127.0.0.1:${LOCAL_PORT} ${USER}@${REMOTE}
