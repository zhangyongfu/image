//***********默认设置定义.*********************
tPopWait=5;//停留tWait豪秒后显示提示。
tPopShow=5000;//显示tShow豪秒后关闭提示
showPopStep=20;
popOpacity=99;

//***************内部变量定义*****************
sPop=null;
curShow=null;
tFadeOut=null;
tFadeIn=null;
tFadeWaiting=null;

document.write("<style type='text/css'id='defaultPopStyle'>");
document.write(".cPopText { text-align: left; background-color: #F8F8F5;color:#000000; border: 1px #000000 solid;font-color: font-size: 12px; padding-right: 4px; padding-left: 4px;height: auto;  padding-top: 2px; padding-bottom: 2px; filter: Alpha(Opacity=0)}");
document.write("</style>");
document.write("<div id='dypopLayer' style='min-width:100px;position:absolute;z-index:1000;' class='cPopText'></div>");

function showPopupText(){
    var o=event.srcElement;
    MouseX=event.x;
    MouseY=event.y;
    if(o.alt!=null && o.alt!=""){o.dypop=o.alt;o.alt=""};
    if(o.title!=null && o.title!=""){o.dypop=o.title;o.title=""};
    if(o.dypop!=sPop) {
        sPop=o.dypop;
        clearTimeout(curShow);
        clearTimeout(tFadeOut);
        clearTimeout(tFadeIn);
        clearTimeout(tFadeWaiting);
        if(sPop==null || sPop=="") {
            dypopLayer.innerHTML="";
            dypopLayer.style.filter="Alpha()";
            dypopLayer.filters.Alpha.opacity=0;
        }
        else {
            if(o.dyclass!=null) popStyle=o.dyclass
            else popStyle="cPopText";
            curShow=setTimeout("showIt()",tPopWait);
        }

    }
}

function showIt(){
    dypopLayer.className=popStyle;
    dypopLayer.innerHTML=sPop;
    popWidth=dypopLayer.clientWidth;
    popHeight=dypopLayer.clientHeight;
    if(MouseX+12+popWidth>document.body.clientWidth){
        popLeftAdjust=-popWidth-24;
    }
    else {
        popLeftAdjust=0;
    }
    if(MouseY+12+popHeight>document.documentElement.clientHeight) {
        popTopAdjust=-popHeight-15;
    }
    else {
        popTopAdjust=0;
    }
//alert(window.navigator.userAgent);
    if(navigator.userAgent.indexOf("MSIE")>0 ){
        if(navigator.userAgent.indexOf("MSIE 7.0")>0){
            dypopLayer.style.top=MouseY+12+document.documentElement.scrollTop+popTopAdjust+"px";
        }else if(navigator.userAgent.indexOf("MSIE 9.0")>0){
            dypopLayer.style.top=MouseY+12+document.body.scrollTop+popTopAdjust+"px";
        }else{
            dypopLayer.style.top=MouseY+12+document.documentElement.scrollTop+popTopAdjust+"px";
        }
    }else{
        dypopLayer.style.top=MouseY+12+document.documentElement.scrollTop+popTopAdjust+"px";
    }
    dypopLayer.style.left=MouseX+12+document.documentElement.scrollLeft+popLeftAdjust+"px";
    dypopLayer.style.filter="Alpha(Opacity=0)";
    fadeOut();
}

function fadeOut(){
    if(dypopLayer.filters.Alpha.opacity<popOpacity) {
        dypopLayer.filters.Alpha.opacity+=showPopStep;
        tFadeOut=setTimeout("fadeOut()",1);
    }
    else {
        dypopLayer.filters.Alpha.opacity=popOpacity;
//tFadeWaiting=setTimeout("fadeIn()",tPopShow);
    }
}

function fadeIn(){
    if(dypopLayer.filters.Alpha.opacity>0) {
        dypopLayer.filters.Alpha.opacity-=1;
        tFadeIn=setTimeout("fadeIn()",1);
    }
}
document.onmouseover=showPopupText;

function CheckAll(form) {
    for (var i=0;i<form.elements.length;i++) {
        var e = form.elements[i];
        if (e.name != 'chkall') e.checked = form.chkall.checked;
    }
}