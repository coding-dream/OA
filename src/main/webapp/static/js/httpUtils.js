/**
 * Created by Administrator on 2017/4/5.
 */

function httpPost(url,jsonParam,callback) {

    $.ajax({
        url:url,
        type:'POST', //GET
        async:true,    //或false,是否异步,默认为true
        data:jsonParam,
        timeout:5000,    //超时时间
        dataType:'html',    //返回的数据格式：json/xml/html/script/jsonp/text
        beforeSend:function(xhr){
            console.log(xhr)
            console.log('发送前')
        },
        success:function(data,textStatus,jqXHR){
            console.log(data);
            console.log(textStatus);
            console.log(jqXHR);
            callback(data);
        },
        error:function(xhr,textStatus){
            console.log('错误');
            console.log(xhr);
            console.log(textStatus);
            callback("错误"+textStatus);
        },
        complete:function(){
            console.log('结束');
        }
    })

}


function httpGet(url,callback) {

    //注意，如果返回paseerror，则dataType和服务器返回类型不一致导致
    $.ajax({
        // url:'/comm/test1.php',
        url:url,
        type:'GET',
        async:true,    //或false,是否异步,默认为true
        timeout:5000,    //超时时间
        dataType:'html',    //返回的数据格式：json/xml/html/script/jsonp/text
        beforeSend:function(xhr){
            console.log(xhr)
            console.log('发送前')
        },
        success:function(data,textStatus,jqXHR){
            console.log(data);
            console.log(textStatus);
            console.log(jqXHR);
            callback(data);
        },
        error:function(xhr,textStatus){
            console.log('错误');
            console.log(xhr);
            console.log(textStatus);
            callback(textStatus);
        },
        complete:function(){
            console.log('结束');
        }
    })

}

