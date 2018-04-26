<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Demo1</title>
    <script>
        window.onload=function(){
            //全选
            var allCheck=document.getElementById("all");
            allCheck.addEventListener('click',function(){
                all();
            },false);
            var allBoxes=document.getElementsByName("cb");
            function all(){
                if(allCheck.checked){
                    for(var i in allBoxes){
                        allBoxes[i].checked=true;
                    }
                }else{
                    for(var i in allBoxes){
                        allBoxes[i].checked=false;
                    }
                }
            }

            //反选
            var inverseBox=document.getElementById("inverseBox");
            inverseBox.addEventListener('click',function(){
                inverseCheck();
            },false);
            function inverseCheck(){
                var isAll=0;
                for(var i=0;i<allBoxes.length;i++){
                    if(allBoxes[i].checked){
                        allBoxes[i].checked=false;
                        allCheck.checked=false;
                    }else{
                        allBoxes[i].checked=true;
                        isAll++;
                    }
                }
                if(isAll==allBoxes.length){
                    allCheck.checked=true;
                }
            }

            //一个一个选，全部选中后全选checked
            for(var i=0;i<allBoxes.length;i++) {
                allBoxes[i].onchange=function(){
                    allBoxChange();
                }
            }
            function allBoxChange(){
                var isAll=0;
                for(var i=0;i<allBoxes.length;i++){
                    if(allBoxes[i].checked){
                        continue;
                    }else{
                        isAll=1;
                        break;
                    }
                }
                if(isAll==0){
                    allCheck.checked=true;
                }else{
                    allCheck.checked=false;
                }
            }
        }
    </script>
</head>
<body>
<table id="newTab" border="1px">
    <tr id="1" style="background-color: yellow;text-align: center">
        <td><input type="checkbox" id="all" >全选</td>
        <td>复选框全选实例</td>
        <td></td>
        <td></td>
    </tr>
    <tr id="2">
        <td><input type="checkbox" id="c1" name="cb">1</td>
        <td>作用：</td>
        <td></td>
        <td></td>
    </tr>
    <tr id="3">
        <td><input type="checkbox" id="c2" name="cb">2</td>
        <td>a.单击列头复选框全选或全不选子项</td>
        <td></td>
        <td></td>
    </tr>
    <tr id="4">
        <td><input type="checkbox" id="c3" name="cb">3</td>
        <td>b.只要有一个子项没有选中，则取消列头的选中状态</td>
        <td></td>
        <td></td>
    </tr>
    <tr id="5">
        <td><input type="checkbox" id="c4" name="cb">4</td>
        <td>c.当所有子项目选中时，列头复选框自动设置为选中状态</td>
        <td></td>
        <td></td>
    </tr>
    <tr id="6">
        <td><input type="checkbox" id="c5" name="cb">5</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr id="7">
        <td><input type="checkbox" id="c6" name="cb">6</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr id="8">
        <td><input type="checkbox" id="c7" name="cb">7</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr id="9">
        <td><input type="checkbox" id="c8" name="cb">8</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr id="10">
        <td><input type="checkbox" id="c9" name="cb">9</td>
        <td></td>
        <td></td>
        <td></td>
    </tr>
    <tr id="11">
        <td><input type="checkbox" id="c10" name="cb">10</td>
        <td>d.将复选框反过来选</td>
        <td></td>
        <td></td>
    </tr>
    <tr id="12" style="background-color: #CCFFFF;text-align: center">
        <td><input type="checkbox" id="inverseBox">反选</td>
        <td>反选示例</td>
        <td></td>
        <td></td>
    </tr>
</table>
</body>
</html>