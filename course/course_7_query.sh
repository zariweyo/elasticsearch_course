#/bin/sh

curl -X POST "elasticServer:9200/municipios/_search?pretty" -H 'Content-Type: application/json' -d'
{
    "from": 0, 
    "size": 4,
    "query": {
        "query_string" : {
            "query" : "(Málaga) OR (Sevilla)",
            "default_field" : "province"
        }
    }
}
'