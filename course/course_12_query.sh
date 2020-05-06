#/bin/sh

curl -X POST "elasticServer:9200/municipios/_search?pretty" -H 'Content-Type: application/json' -d'
{
    "from": 0, 
    "size": 20,
    "sort": [
        {
            "cod_municipality": {"order": "asc"}
        }
    ], 
    "query": {
        "bool": {
            "must": [
                {
                    "wildcard": {
                        "municipality": "*alcor*"
                    }
                }
            ],
            "must_not":[
                      {
                          "terms": {
                              "cod_province": ["28","40"]
                          }
                      }
                    
                  ]
        }
    }
}
'