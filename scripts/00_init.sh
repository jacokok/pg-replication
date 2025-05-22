#!/usr/bin/env bash
echo "=================================== START ==========================================="
rm -rf /var/lib/postgresql/data
pg_basebackup -h postgres -D /var/lib/postgresql/data -U postgres -P -v -R -X stream -C -S main_replication
echo "==================================== END ============================================"
