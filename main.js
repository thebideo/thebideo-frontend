/* Toggle between adding and removing the "responsive" class to topnav when the user clicks on the icon */
function myFunction() {
    var x = document.getElementById("navbar");
    if (x.className === "navbar col-xs-12 col-sm-12") {
        x.className += " responsive";
    } else {
        x.className = "navbar col-xs-12 col-sm-12";
    }
} 