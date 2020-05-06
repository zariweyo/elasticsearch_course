#/bin/sh
curl -X GET "elasticServer:9200/_cat/indices?v&pretty"
curl -X GET "elasticServer:9200/municipios/_mapping?pretty"