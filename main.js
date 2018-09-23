console.log('Hello world!')
/* Toggle between adding and removing the "responsive" class to topnav when the user clicks on the icon */
function myFunction() {
    var x = document.getElementById("navbar");
    if (x.className === "navbar col-xs-9 col-md-9") {
        x.className += " responsive";
    } else {
        x.className = "navbar col-xs-9 col-md-9";
    }
    console.log("I mean, I got executed...")
} 