$('#btnSendContact').click(function(){
    var txtemail = $('#txtemail').val();
    var txtname = $('#txtname').val();
    var txtphone = $('#txtphone').val();
    var txtmessage = $('#txtmessage').val();
    var _token = $('#_token').val();

    if(txtemail == '' || txtname == '' || txtmessage == '' ){
        alert('Vui lòng thử lại ');
        return flase;
    }
    var reg = /^([A-Za-z0-9_\-\])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
    if(reg.test(txtemail)==flase){
        alert('Email không hợp lệ vui lòng thử lại');
        return flase;
    }
    $.ajax({
        type: 'POST',
        url: url+"/gui-lien-he",
        data:{
            txtemail : txtemail,
            txtname : txtname,
            txtphone : txtphone,
            txtmessage : txtmessage,
            _token: _token
        },
        success: function(data){
            if(data == 'error_empty'){
                alert('Email đã tồn tại vui lòng thử lại');
            }else if(data == 'error'){
                alert('Có lỗi trong quá trình thêm email');
            }else{
                alert('Chúng tôi đã tiếp nhận phản hồi của bạn');
            }
        }
    })
})