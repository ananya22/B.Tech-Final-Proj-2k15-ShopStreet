function Submit(){
 var emailRegex = /^[A-Za-z0-9._]*\@[A-Za-z]*\.[A-Za-z]{2,5}$/;
 	var numbers = /^[0-9]+$/;  
var     uname = document.form.firstName.value,
        fname = document.form.lastName.value,    
            lname = document.form.userAddress.value,
        addr = document.form.postCode.value,
        pcode = document.form.userEmail.value,
        phone = document.form.userPhone.value;/*
            femail =document.form.lname.value;//   fname = document.form.Name.value;
*/



 if( uname == "" )
   {
     document.form.firstName.focus() ;
  document.getElementById("errorBox").innerHTML = "enter the first name please";
     return false;
   }
 


 if( uname != '' && fname == "" )
   {
     document.form.firstName.focus() ;
  document.getElementById("errorBox").innerHTML = "";
     document.form.lastName.focus() ;
  document.getElementById("errorBox1").innerHTML = "enter the last Name please";
     
        return false;

   }
   
  
 if( fname != '' && lname == "")
   {
     document.form.lastName.focus() ;
  document.getElementById("errorBox1").innerHTML = "";
     document.form.userAddress.focus() ;
  document.getElementById("errorBox2").innerHTML = "enter the Address please";
   
        return false;

   }
   


 if( lname != '' && addr == "" )
   {
     document.form.userAddress.focus() ;
  document.getElementById("errorBox2").innerHTML = "";
     document.form.postCode.focus() ;
  document.getElementById("errorBox3").innerHTML = "enter the post code please";
     
        return false;

   }
   
   



 if( addr != '' && pcode == "" )
   {
     document.form.postCode.focus() ;
  document.getElementById("errorBox3").innerHTML = "";
     document.form.userEmail.focus() ;
  document.getElementById("errorBox4").innerHTML = "enter the Emailid please";
     
        return false;

   }


 if( pcode != '' && phone =="" )
   {
     document.form.userEmail.focus() ;
  document.getElementById("errorBox4").innerHTML = "";
  
  document.form.userPhone.focus();
  document.getElementById("errorBox5").innerHTML = "enter the phone no";
  return false;
  }


   if(!numbers.test(phone)){
  document.form.userPhone.focus();
  document.getElementById("errorBox5").innerHTML = "enter the valid no.";

        return false;

   }


 if(phone.length != 10)
   {
     document.form.userPhone.focus() ;
  document.getElementById("errorBox5").innerHTML = "enter 10 digits only";
     
        return false;

   }

 if(phone != '' )
   {
     document.form.userPhone.focus() ;
  document.getElementById("errorBox5").innerHTML = "";
     
        return false;

   }



   

/* 
  

 if( lname == "" )
   {
     document.form.LastName.focus() ;
   document.getElementById("errorBox").innerHTML = "enter the last name";
     return false;
   }
   
   if (femail == "" )
 {
  document.form.Email.focus();
  document.getElementById("errorBox").innerHTML = "enter the email";
  return false;
  }else if(!emailRegex.test(femail)){
  document.form.Email.focus();
  document.getElementById("errorBox").innerHTML = "enter the valid email";
  return false;
  }
  
   if (freemail == "" )
 {
  document.form.enterEmail.focus();
  document.getElementById("errorBox").innerHTML = "Re-enter the email";
  return false;
  }else if(!emailRegex.test(freemail)){
  document.form.enterEmail.focus();
  document.getElementById("errorBox").innerHTML = "Re-enter the valid email";
  return false;
  }
  
  if(freemail !=  femail){
   document.form.enterEmail.focus();
   document.getElementById("errorBox").innerHTML = "emails are not matching, re-enter again";
   return false;
   }
  
  
 if(fpassword == "")
  {
   document.form.Password.focus();
   document.getElementById("errorBox").innerHTML = "enter the password";
   return false;
  }
  
   if (fmonth == "") {
        document.form.birthday_month.focus();
  document.getElementById("errorBox").innerHTML = "select the birthday month";
        return false;
     }
  if (fday == "") {
        document.form.birthday_day.focus();
  document.getElementById("errorBox").innerHTML = "select the birthday day";
        return false;
     }
  if (fyear == "") {
        document.form.birthday_year.focus();
  document.getElementById("errorBox").innerHTML = "select the birthday year";
        return false;
     }
  if(document.form.radiobutton[0].checked == false && document.form.radiobutton[1].checked == false){
    document.getElementById("errorBox").innerHTML = "select your gender";
    return false;
   }
  if(fname != '' && lname != '' && femail != '' && freemail != '' && fpassword != '' && fmonth != '' && fday != '' && fyear != ''){
   document.getElementById("errorBox").innerHTML = "form submitted successfully";
   }
    
}
*/
}