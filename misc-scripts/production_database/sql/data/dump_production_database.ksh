#!/bin/ksh

dbhost="ens-staging1"
dbuser="ensro"

# The only thing not properly dumped by the following command is the
# "db_list" view, but that's of minor importance as the view definition
# is available in the table.sql file.

mysqldump --skip-opt --skip-compact --order-by-primary \
  --force --host="${dbhost}" --user="${dbuser}" --password="${dbpass}" \
    ensembl_production > ensembl_production.dump 2>/dev/null