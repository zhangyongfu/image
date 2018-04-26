
<!DOCTYPE html>
<%--
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>滚动条f地枯基厅城村械测试</title>

    <style>
        .parent_div {
            width: auto;
            height: auto
        }
        .t{
            background-color: #888888;
            width:200px;
            height:auto;
        }
    </style>
</head>
<body>

&lt;%&ndash;

<div class="t">
    <div class="parent_div">
        <ul id="my_list">
            <li>This is list item origin.</li>
        </ul>
    </div>
</div>

<script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
    (function ($) {
        var pos = 0;
        var LIST_ITEM_SIZE = 100;
        //滚动条距底部的距离
        var BOTTOM_OFFSET = 0;
        createListItems();
        $(document).ready(function () {
            $(window).scroll(function () {
                var $currentWindow = $(window);
                //当前窗口的高度
                var windowHeight = $currentWindow.height();
                console.log("current widow height is " + windowHeight);
                //当前滚动条从上往下滚动的距离
                var scrollTop = $currentWindow.scrollTop();
                console.log("current scrollOffset is " + scrollTop);
                //当前文档的高度
                var docHeight = $(document).height();
                console.log("current docHeight is " + docHeight);

                //当 滚动条距底部的距离 + 滚动条滚动的距离 >= 文档的高度 - 窗口的高度
                //换句话说：（滚动条滚动的距离 + 窗口的高度 = 文档的高度）  这个是基本的公式
                if ((BOTTOM_OFFSET + scrollTop) >= docHeight - windowHeight) {
                    createListItems();
                }
            });
        });

        function createListItems() {
            var mydocument = document;
            var mylist = mydocument.getElementById("my_list");
            var docFragments = mydocument.createDocumentFragment();

            for (var i = pos; i < pos + LIST_ITEM_SIZE; ++i) {
                var liItem = mydocument.createElement("li");
                liItem.innerHTML = "This is item " + i;
                docFragments.appendChild(liItem);
            }
            pos += LIST_ITEM_SIZE;
            mylist.appendChild(docFragments);
        }
    })(jQuery);

</script>


<%



%>
&ndash;%&gt;



<div>
    &lt;%&ndash;在网页中添加一个图片，待会就能用鼠标滚轮控制此图片的缩放&ndash;%&gt;
    <img id="myimage" src="http://localhost:8080/i/pub_img/7.jpg" alt="my image" />
    <script type="text/javascript">
        //添加鼠标滚轮事件处理代码
        var myimage = document.getElementById("myimage");
        if (myimage.addEventListener) {
            // IE9, Chrome, Safari, Opera
            myimage.addEventListener("mousewheel", MouseWheelHandler, false);
            // Firefox
            myimage.addEventListener("DOMMouseScroll", MouseWheelHandler, false);
        }
        // IE 6/7/8
        else myimage.attachEvent("onmousewheel", MouseWheelHandler);
        //为了让不同浏览器都能支持的处理做法,我们将对Firefox的detail值取反然后返回1或者-1的其中一个
        function MouseWheelHandler(e) {
            // cross-browser wheel delta
            var eve = window.event || e; // old IE support
            var delta = Math.max(-1, Math.min(1, (eve.wheelDelta || -eve.detail)));
            //现在我们直接决定图片的大小范围。以下代码将图片的宽度范围设置在50-800个像素之间
            myimage.style.width = Math.max(50, Math.min(800, myimage.width + (10 * delta))) + "px";
            // 最后一点，我们在方法中返回false是为了终止标准的鼠标滚轮事件处理，以防它上下滑动网页
            return false;
        }
    </script>
</div>

--%>
<%--

</body>
</html>--%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <style type="text/css">
        html, body {
            height: 100%;
            overflow: hidden;
        }
        body {
            margin: 0;
            padding: 0;
        }
        #oImg {
            position: absolute;
            left: 50px;
            top: 50px;
            z-index: 1;
        }
    </style>
<%--    <script type="text/javascript">
        /*绑定事件*/
        function addEvent(obj, sType, fn) {
            if (obj.addEventListener) {
                obj.addEventListener(sType, fn, false);
            } else {
                obj.attachEvent('on' + sType, fn);
            }
        };
        function removeEvent(obj, sType, fn) {
            if (obj.removeEventListener) {
                obj.removeEventListener(sType, fn, false);
            } else {
                obj.detachEvent('on' + sType, fn);
            }
        };
        function prEvent(ev) {
            var oEvent = ev || window.event;
            if (oEvent.preventDefault) {
                oEvent.preventDefault();
            }
            return oEvent;
        }
        /*添加滑轮事件*/
        function addWheelEvent(obj, callback) {
            if (window.navigator.userAgent.toLowerCase().indexOf('firefox') != -1) {
                addEvent(obj, 'DOMMouseScroll', wheel);
            } else {
                addEvent(obj, 'mousewheel', wheel);
            }
            function wheel(ev) {
                var oEvent = prEvent(ev),
                    delta = oEvent.detail ? oEvent.detail > 0 : oEvent.wheelDelta < 0;
                callback && callback.call(oEvent, delta);
                return false;
            }
        };
        /*页面载入后*/
        window.onload = function() {
            var oImg = document.getElementById('oImg');
            /*拖拽功能*/
            (function() {
                addEvent(oImg, 'mousedown', function(ev) {
                    var oEvent = prEvent(ev),
                        oParent = oImg.parentNode,
                        disX = oEvent.clientX - oImg.offsetLeft,
                        disY = oEvent.clientY - oImg.offsetTop,
                        startMove = function(ev) {
                            if (oParent.setCapture) {
                                oParent.setCapture();
                            }
                            var oEvent = ev || window.event,
                                l = oEvent.clientX - disX,
                                t = oEvent.clientY - disY;
                            oImg.style.left = l +'px';
                            oImg.style.top = t +'px';
                            oParent.onselectstart = function() {
                                return false;
                            }
                        }, endMove = function(ev) {
                            if (oParent.releaseCapture) {
                                oParent.releaseCapture();
                            }
                            oParent.onselectstart = null;
                            removeEvent(oParent, 'mousemove', startMove);
                            removeEvent(oParent, 'mouseup', endMove);
                        };
                    addEvent(oParent, 'mousemove', startMove);
                    addEvent(oParent, 'mouseup', endMove);
                    return false;
                });
            })();
            /*以鼠标位置为中心的滑轮放大功能*/
            (function() {
                addWheelEvent(oImg, function(delta) {
                    var ratioL = (this.clientX - oImg.offsetLeft) / oImg.offsetWidth,
                        ratioT = (this.clientY - oImg.offsetTop) / oImg.offsetHeight,
                        ratioDelta = !delta ? 1 + 0.1 : 1 - 0.1,
                        w = parseInt(oImg.offsetWidth * ratioDelta),

//                        Math.max(50, Math.min(800, myimage.width + (10 * delta)))

                        h = parseInt(oImg.offsetHeight * ratioDelta),
                        l = Math.round(this.clientX - (w * ratioL)),
                        t = Math.round(this.clientY - (h * ratioT));
                    with(oImg.style) {
                        width = w +'px';
                        height = h +'px';
                        left = l +'px';
                        top = t +'px';
                    }
                });
            })();
        };
    </script>--%>
    <script type="text/javascript" src="../js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript">
        //添加鼠标滚轮事件处理代码
        var myimage = document.getElementById("oImg");
        if (myimage.addEventListener) {
            // IE9, Chrome, Safari, Opera
            myimage.addEventListener("mousewheel", MouseWheelHandler, false);
            // Firefox
            myimage.addEventListener("DOMMouseScroll", MouseWheelHandler, false);
        }
        // IE 6/7/8
        else myimage.attachEvent("onmousewheel", MouseWheelHandler);
        //为了让不同浏览器都能支持的处理做法,我们将对Firefox的detail值取反然后返回1或者-1的其中一个
        function MouseWheelHandler(e) {
            // cross-browser wheel delta
            var e = window.event || e; // old IE support
            var delta = Math.max(-1, Math.min(1, (e.wheelDelta || -e.detail)));
            //现在我们直接决定图片的大小范围。以下代码将图片的宽度范围设置在50-800个像素之间
            myimage.style.width = Math.max(50, Math.min(800, myimage.width + (30 * delta))) + "px";
            // 最后一点，我们在方法中返回false是为了终止标准的鼠标滚轮事件处理，以防它上下滑动网页
            return false;
        }
    </script>
</head>
<body>
<img id="oImg" src="http://localhost:8080/i/pub_img/7.jpg" alt="my image" />
</body>
</html>
