/**
 *  JQuery对象就是通过jQuery包装DOM对象后产生的对象。JQuery对象是jQuery独有的，其可以使用jQuery里的方法，但是不能使用DOM的方法；
 *  如:$("#color").html();
 *  DOM对象就是javascript固有的一些对象。DOM对象能使用javascript固有的方法，但是不能使用jQuery里面的方法。
 *  如:document.getElementById("color").innerHTML;
 */
function domToJquery(dom) {
    var $jquery = $(dom); //转换成jquery对象
    return $jquery;
}

function jqueryToDom($jquery) {
    var dom = $jquery[0]; // 也可写成 var dom = $jquery.get(0);
    return dom;
}