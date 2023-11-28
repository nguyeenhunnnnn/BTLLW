

 function check()
 {
    let check=true;
    var ten=document.getElementById("txtTenKH");
    var pass=document.getElementById("txtPassword");
    var email=document.getElementById("txtEmail");
    var rePass=document.getElementById("txtRePassword");
    var errTen=document.getElementById("errmes1");
    var errPass=document.getElementById("errpass");
    var errEmail=document.getElementById("errmesEmail");
    var errRePass=document.getElementById("errRepass");
    var str="";
    if (email && rePass && errEmail && errPass) {
        if(email.value=="")
    {
        check=false;
        str="Bạn chưa nhập Email";
        hienthiloi(errEmail,email,str);
    }
    else{
        errEmail.innerText="";
        
    }
    if(rePass.value=="")
    {
        check=false;
        str="Bạn chưa nhập lại mật khẩu";
        hienthiloi(errRePass,rePass,str);
    }else if(rePass.value!=pass.value)
    {
        check=false;
        str="Mật khẩu nhập lại không chính xác";
        hienthiloi(errRePass,rePass,str);
    }else{
        errRePass.innerText="";
        
    }
   }
    if(ten.value=="")
    {
        check=false;
        str="Bạn chưa nhập tên";
       hienthiloi(errTen,ten,str);
      
    }
    else if (ten.value.length <= 3 || ten.value.length >= 13)
    {
        check=false;
        str="Tên đăng nhập khong dung kích thước";
        hienthiloi(errTen,ten,str);
    }
    
    else {
        errTen.innerText="";
        
    }
    
    if(pass.value=="")
    {
        check=false;
        str="Bạn chưa nhập mật khẩu ";
       hienthiloi(errPass,pass,str);
        
    }
    else if (pass.value.length <= 3 || pass.value.length >= 13)
    {
       
        str="Mật khẩu khong dung kích thước";
        hienthiloi(errPass,pass,str); 
    }
    else {
        errPass.innerText="";
        
    }
    var parrent=/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9])+$/;
    var checksdt=/(09|03|07|08|05)+([0-9])/;
    
 //  check dinh dang so dien thoai
    // else if(!checksdt.test(email.value))
    // {   check=false;
    //     str="So dien thoai khong hop le";
    //     hienthiloi(errEmail,email,str);
    // }
    // else if(email.value.length<=9 || email.value.length>10)
    // {   check=false;
    //     str="So dien thoai vuot qua hop le";
    //     hienthiloi(errEmail,email,str);
    // }
    //check la so 
    // else if(isNaN(email.value))
    // {
    //     check=false;
    //     str=" nhập so Email";
    //     hienthiloi(errEmail,email,str);
    // }
    // check dinh dang email
    // else if(!parrent.test(email.value))
    // {   check=false;
    //     str="Sai ki tu";
    //     hienthiloi(errEmail,email,str);
    // }
   
  return check;
 }
 
 function hienthiloi(elementErr,elementTxt,str)
 {
    elementTxt.nextElementSibling.style.border="1px solid rgb(184, 10, 10)";
    elementTxt.focus();
    elementErr.innerText=str;
    
 }
