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
                    "match": {
                        "cod_province": "28"
                    }
                }
            ],
            "must_not":[
                      {
                          "terms": {
                              "cod_municipality": ["007","009"]
                          }
                      }
                    
                  ]
        }
    }
}
'