//validation function
function btnfunction(){
    var x = document.getElementById('incorrect');
    x.innerHTML = "The username or password you entered is not correct !";
}
//detects when the modal is hidden and resets the validation process
$('#myModal').on('hidden.bs.modal', function () {
    document.getElementById('incorrect').innerHTML = "";
})
//links the login button to the modal content
$(document).ready(function(){
    $("#myBtn").click(function(){
      $("#myModal").modal();
    });
  });