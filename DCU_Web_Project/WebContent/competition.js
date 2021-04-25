
function validateForm() {
    var a = document.getElementById("name").value;
    var b = document.getElementById("age").value;
    var c = document.getElementById("gender").value;
    var d = document.getElementById("phone").value;
    var e = document.getElementById("email").value;
    var f = document.getElementById("event").value;
    var g = document.getElementById("from").value;
    var h = document.getElementById("hear").value;
    var i = document.getElementById("why").value;
    var j = document.getElementById("date").value;

// alerts for required fields in the form
    if (a === "" || e === "" || h === "") {
        alert("Please fill out the required fields (*).");
    }
}


// Set the date we're counting down to
var countDownDate = new Date("Apr 19, 2021 00:00:00").getTime();

// Update the count down every 1 second
var x = setInterval(function() {

    // Get today's date and time
    var now = new Date().getTime();

    // Calculate time between now and date
    var timeTo = countDownDate - now;

    // Time calculations for days, hours, minutes and seconds
    var days = Math.floor(timeTo / (1000 * 60 * 60 * 24));
    var hours = Math.floor((timeTo % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
    var minutes = Math.floor((timeTo % (1000 * 60 * 60)) / (1000 * 60));
    var seconds = Math.floor((timeTo % (1000 * 60)) / 1000);

    // Output the result in an element with id="demo"
    document.getElementById("timer").innerHTML = days + "d " + hours + "h "
        + minutes + "m " + seconds + "s ";

    // If the count down is over, write some text
    if (distance < 0) {
        clearInterval(x);
        document.getElementById("timer").innerHTML = "Assignment Submitted!";
    }
}, 1000);

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
