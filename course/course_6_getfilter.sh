#/bin/sh

curl -X POST "elasticServer:9200/municipios/_search?pretty" -H 'Content-Type: application/json' -d'
{   
        "size" : 4,
        "query": {
              "bool": {
                  "filter":[
                      {
                        "term": {
                            "cod_province": "44"
                        }
                      }
                  ]
              }
          }
}
'