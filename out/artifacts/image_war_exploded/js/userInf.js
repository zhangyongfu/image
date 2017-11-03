
// 控制生日时间
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

