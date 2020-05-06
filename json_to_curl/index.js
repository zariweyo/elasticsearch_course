const fs = require('fs');

let rawdata = fs.readFileSync('espana-municipios.json');
let municipios = JSON.parse(rawdata);
console.log(municipios[0]);
//console.log(municipios[100]);

return;

let municipiosInsert = {}

municipios.forEach(_munic => {
    if(!_munic.fields.cpro || !_munic.fields.cmun){
        return;
    }
    municipiosInsert[_munic.fields.cpro+"_"+_munic.fields.cmun] = {
        "municipality": _munic.fields.municipio,
        "province": _munic.fields.provincia,
        "cod_municipality": _munic.fields.cmun,
        "cod_province": _munic.fields.cpro,
    };
});

function toText(_id,_jsonData){
    const _idx = '{ "index":{"_id": "'+_id+'"} }'
    let _data = '{';
    for(var _i in _jsonData){
        if(_data.length>1){
            _data += ", "
        }
        _data += '"'+_i+'": "'+_jsonData[_i]+'"';
    }
    _data+="}"

    console.log(_idx);
    console.log(_data);
}

const max = 10000;
let _cont = 1;
for(var _idx in municipiosInsert){
    toText(_idx,municipiosInsert[_idx]);
    _cont++;
    if(_cont>max){
        break;
    }
}
console.log("");