#/bin/sh
curl -X DELETE "http://elasticServer:9200/municipios"
curl -XPUT -H "Content-Type: application/json" -d @resources/map_v2.json "elasticServer:9200/municipios?pretty"