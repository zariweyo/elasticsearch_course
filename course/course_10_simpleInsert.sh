#/bin/sh

curl -X POST -H "Content-Type: application/json" -d @resources/simple_insert.json "elasticServer:9200/municipios/_doc/000_100"