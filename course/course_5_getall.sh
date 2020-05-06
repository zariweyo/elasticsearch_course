#/bin/sh


curl -X POST "elasticServer:9200/municipios/_search?pretty" -H 'Content-Type: application/json' -d'
{"query": {"match_all": {}}}
'