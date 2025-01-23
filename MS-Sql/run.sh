#!/bin/bash

# MSSQL Server für JTL-Wawi

install() {
    # Verzeichnis für DB Files erstellen
    mkdir -p mssql
    # Rechte setzen
    sudo chown 10001:10001 mssql
}

start() {
    # Container starten
    docker-compose up -d
}

stop() {
    # Container stoppen
    docker-compose down
}

remove() {
    # Container und Volumes löschen
    docker-compose down -v
    # Verzeichnis löschen
    sudo rm -rf mssql
}

case "$1" in
    install)
        install
        ;;
    start)
        start
        ;;
    stop)
        stop
        ;;
    remove)
        remove
        ;;
    *)
        echo "Usage: $0 {install|start|stop|remove}"
        exit 1
esac