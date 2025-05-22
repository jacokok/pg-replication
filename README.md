# Postgres Replication

```bash
pg_basebackup -h postgres -D /var/lib/postgresql/data/test -U replicator -P -v -R -X stream -C -S replica1

pg_basebackup -U postgres -D /tmp/base_backup -Ft -z -X stream -P 
```

## Promote Slave to Master

```bash
# Make sure to include the user otherwise it does not work
# This will promote slave to become master db.
docker compose exec -it --user postgres slave pg_ctl promote -D /var/lib/postgresql/data

# Check if in recovery. SHould be false if it switched over.
SELECT pg_is_in_recovery()
```