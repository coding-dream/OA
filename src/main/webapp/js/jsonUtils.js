function jsonToStr(jsonObj) {
    /*
    var jsonObj = {
        "qq":"321321321",
        "MSN":"asdf@asdf.com",
        "Tel":"0852-8888888"
    };
     */

    var jStr = "{ ";
    for(var item in jsonObj){
        jStr += "'"+item+"':'"+jsonObj[item]+"',";
    }
    jStr = jStr.substr(0, jStr.length - 1);
    jStr += " }";
    return jStr;
}

function strToJson(jsonStr) {
    var jsonStr = '{ "name": "小强", "age": 16 }';
    //testJson = eval(jsonStr);//错误的转换方式
    var jsonObject = eval("(" + jsonStr + ")");
    // alert(jsonObject.name);
    return jsonObject;
}
