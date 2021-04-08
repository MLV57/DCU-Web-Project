
    $(function()
    {
    $('.tech_slide img:gt(0)').hide();
    setInterval(function(){
    $('.tech_slide :first-child').fadeOut()
    .next('img').fadeIn("slow")
    .end().appendTo('.tech_slide');},
    7000);

    $('.sci_slide img:gt(0)').hide();
    setInterval(function(){
    $('.sci_slide :first-child').fadeOut()
    .next('img').fadeIn("slow")
    .end().appendTo('.sci_slide');},
    10000);

    $('.art_slide img:gt(0)').hide();
    setInterval(function(){
    $('.art_slide :first-child').fadeOut()
    .next('img').fadeIn("slow")
    .end().appendTo('.art_slide');},
    9000);

    $('.lit_slide img:gt(0)').hide();
    setInterval(function(){
    $('.lit_slide :first-child').fadeOut()
    .next('img').fadeIn("slow")
    .end().appendTo('.lit_slide');},
    8000);
});


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


    function enlarge(x) {
        x.style.border ='30px solid #D3D3D309';
    }

    function anti_enlarge(x) {
        x.style.border ='0px solid #D3D3D309';
    }
