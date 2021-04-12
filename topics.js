function openNav() {
    document.getElementById("dyanamicMenu").style.width = "275px";
    document.getElementById("main_block").style.marginLeft = "275px";
    document.querySelector("footer").style.marginLeft = "275px";
}

function closeNav() {
    document.getElementById("dyanamicMenu").style.width = "0";
    document.getElementById("main_block").style.marginLeft= "0";
    document.querySelector("footer").style.marginLeft= "0";
}