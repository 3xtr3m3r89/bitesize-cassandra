#!/bin/bash
export C_ADMIN_USER="cassandraUser"
export C_ADMIN_PASS="cassandraPassword"
export C_CQLSH_SCRIPT="https://s3-us-west-2.amazonaws.com/cassandra-temp-cql-files/input.cql"

wget ${C_CQLSH_SCRIPT}
service cassandra start
source input.cql
