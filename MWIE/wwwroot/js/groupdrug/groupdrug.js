//$(".test").on('click', function () {
//      
//    //$("#mess").fadeIn();
//    $.ajax({
//        url: "/GroupDrug/Delete",
//        type: "GET",
//        contentType: 'application/json',
//        success: function (data) {
//            alert(data.message);
//        }
//    });
   
//});
$("#btnmess").on('click',
    function () {
        $("#mess").hide(500);
        setTimeout(function () {  }, 600);

    })

function fc(idq) { 
    //$.ajax({
    //    url: "/GroupDrug/Delete",
    //    type: "GET",
    //    data: id,
    //    cache: false,
    //    contentType: 'application/json',
    //    success: function (data) {
    //        //alert(data.message);
    //        //if (data != null) {
    //        //    $("#mess").fadeIn();
    //        //}
           
    //    },
    //    error: function () {
    //        $("#mess").fadeIn();
    //    }
    //});
    $.ajax({
        url: "/GroupDrug/Delete",
        type: "POST",
        contentType: 'application/json',
        processData: true,
        cache: false,
        data: JSON.stringify(idq),
        success: function (data) {
            if (data.message != undefined) {
                $("#mess").fadeIn();
            } else {
                location.reload(true);
            }
            //alert(data.message)
        },
        error: function (err) {
            alert("loi")
        }
    });
}


document.getElementById('5').classList.add('openNav');
localStorage.setItem('testClass', document.getElementById('5').getAttribute('class'));