#/bin/sh


curl -X POST "elasticServer:9200/municipios/_bulk" -H 'Content-Type: application/x-ndjson' --data-binary @resources/bulk_inserts.data
