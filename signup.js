function clearErrors() {

    errors = document.getElementsByClassName('formerror');
    for (let item of errors) {
        item.innerHTML = "";
    }


}

function seterror(id, error) {
    //sets error inside tag of id 
    element = document.getElementById(id);
    element.getElementsByClassName('formerror')[0].innerHTML = error;

}

function validateForm() {
    var returnval = true;
    clearErrors();


    //perform validation and if validation fails, set the value of returnval to false

    var Username = document.forms['myForm']["fuser"].value;
    if (Username.length < 6) {
        seterror("USname", "*Length of Username is too short");
        returnval = false;
    }
    var firstname = document.forms['myForm']["fname"].value;
    if (firstname.length < 10) {
        seterror("name", "*Length of name is too short");
        returnval = false;
    }

    if (firstname.length == 0) {
        seterror("name", "*Length of name cannot be zero!");
        returnval = false;
    }
    var secondname = document.forms['myForm']["lname"].value;
    if (secondname.length < 10) {
        seterror("sname", "*Length of name is too short");
        returnval = false;
    }
    var Gender = document.forms['myForm']["fgender"].value;
    if (Gender.length < 5) {
        seterror("Gender", "*Wrong Orientation");
        returnval = false;
    }
    var University = document.forms['myForm']["funiversity"].value;
    if (University.length < 2) {
        seterror("uname", "*Please mention the full name ");
        returnval = false;
    }
    var Enroll = document.forms['myForm']["fid"].value;
    if (Enroll.length < 6) {
        seterror("Eid", "*");
        returnval = false;
    }
    var email = document.forms['myForm']["femail"].value;
    if (email.length < 20) {
        seterror("email", "*Email length is too long");
        returnval = false;
    }

    var Contact = document.forms['myForm']["fphone"].value;
    if (Contact.length != 12) {
        seterror("phone", "*Phone number should be of 12 digits!");
        returnval = false;
    }

    var password = document.forms['myForm']["fpass"].value;
    if (password.length < 6) {
        seterror("pass", "*Password should be atleast 6 characters long!");
        returnval = false;
    }

    var cpassword = document.forms['myForm']["fcpass"].value;
    if (cpassword != password) {
        seterror("cpass", "*Password and Confirm password should match!");
        returnval = false;
    }

    return returnval;
}
