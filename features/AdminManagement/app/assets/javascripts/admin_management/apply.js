
function change_customer_apply_status(apply_id){

    $.ajax({

        url:'/change_customer_apply_status',
        type:'POST',
        data: {apply_id: apply_id},
        success: function (result) {
            alert('更改成功');
            window.location.reload();
        },
        error: function (error) {

        }
    })

}