function ShowMessage(msg) {
    var span = document.getElementById("Outputajaxspan");
    span.innerHTML = msg;
    //alert(msg);
}
function pageLoad() { 
ShowMessage("Hi Ajax");
}