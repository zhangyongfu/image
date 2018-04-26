
function editHead(o) {

    document.getElementById("headid").style.display="block";  //显示弹出层

    var hidebg=document.getElementById("hidebgid");

    hidebg.style.display="block";  //显示隐藏层
    hidebg.style.height=document.body.clientHeight+"px";  //设置隐藏层的高度为当前页面高度


}
function cancalhead() {
    document.getElementById("headid").style.display="none";  //隐藏弹出层
    document.getElementById("hidebgid").style.display="none";  //隐藏隐藏层
    var urlofhead=document.getElementById("userhead").src;
    document.getElementById("changehead").src=urlofhead;
    document.getElementById("updatehead").value="";

}

// 控制出生日期
function limitYear(o) {
    var value = o.value;
    var date = new Date();
    var min = 1970;
    var max = date.getFullYear();
    if (parseInt(value) < min || parseInt(value) > max) {
        o.value = min;
    }
}
function limitMonth(o) {
    var value=o.value;
    var min=1;
    var max=12;
    if(parseInt(value)<min||parseInt(value)>max) {
        o.value = min;
    }
}
function limitDay(o) {
    var value=o.value;
    var min=1;
    var max=30;
    if(parseInt(value)<min||parseInt(value)>max) {
        o.value = min;
    }
}


window.onload = function() {
    var buttondiv = document.getElementById("tagbut");
    var buttonarr = buttondiv.getElementsByTagName("button");
    var tagdiv = document.getElementById("tagdiv");
    var divarr = tagdiv.getElementsByTagName("nav");

    for (var i = 0; i < buttonarr.length; i++) {
        buttonarr[i].index = i;
        buttonarr[i].onclick = function () {
            for (var j = 0; j < buttonarr.length; j++) {
                buttonarr[j].className = "off";
                divarr[j].className = "hide";
            }
            this.className = "on";
            divarr[this.index].className = "ab";
        }
    }


    var tr= document.getElementById("userinformationtable").getElementsByTagName("tr");
    for (var i=0;i<tr.length;i++){
        i%2==0?tr[i].className="on":tr[i].className="off";
    }



}

function changeinfo(o) {
    var infoid=document.getElementById("infor");
    var alter=document.getElementById("alterinfor");
    infoid.className="hide";
    alter.className="show";
}

function backinfor(o) {
    var infoid=document.getElementById("infor");
    var alter=document.getElementById("alterinfor");
    infoid.className="show";
    alter.className="hide";

}




