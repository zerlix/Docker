# MSSQL Server für JTL-Wawi


```bash
# Verzeichnis für DB Files erstellen
mkdir mssql
# Rechte setzen
sudo chown 10001:10001 mssql
```


```bash
# Container starten
docker-compose up -d

# Container und Volumes löschen
docker-compose down -v

# Container neu starten
docker-compose up -d
```


## JTL Einstellung DB-Path
`/var/opt/mssql/data/eazybusiness`