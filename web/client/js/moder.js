function Submit(){
 var emailRegex = /^[A-Za-z0-9._]*\@[A-Za-z]*\.[A-Za-z]{2,5}$/;

var     uname = document.form.uid.value,
    fname = document.form.emailid.value,
            lname = document.form.pwd.value,
        addr = document.form.pwd1.value,
        pcode = document.form.secans.value,
        phone = document.form.fname.value,
    
            femail =document.form.lname.value;//   fname = document.form.Name.value;


 if( uname == "" )
   {
     document.form.uid.focus() ;
  document.getElementById("errorBox").innerHTML = "enter the user id please";
     return false;
   }


 if( uname != '' && fname == "" )
   {
     document.form.uid.focus() ;
  document.getElementById("errorBox").innerHTML = "";
     document.form.emailid.focus() ;
  document.getElementById("errorBox1").innerHTML = "enter the Emailid please";
     
        return false;

   }
   if(!emailRegex.test(fname)){
  document.form.emailid.focus();
  document.getElementById("errorBox1").innerHTML = "enter the valid email";

        
        return false;

   }
   

 if( fname != '' && lname == "")
   {
     document.form.emailid.focus() ;
  document.getElementById("errorBox1").innerHTML = "";
     document.form.pwd.focus() ;
  document.getElementById("errorBox2").innerHTML = "enter the password";
   
        return false;

   }


 if( lname != '' && addr == "" )
   {
     document.form.pwd.focus() ;
  document.getElementById("errorBox2").innerHTML = "";
     document.form.pwd1.focus() ;
  document.getElementById("errorBox3").innerHTML = "re-enter the password";
     
        return false;

   }
   
  if(addr !=  lname){
   document.form.pwd1.focus();
   document.getElementById("errorBox3").innerHTML = "password are not matching, re-enter again";
   return false;
   }

   



 if( addr != '' && pcode == "" )
   {
     document.form.pwd1.focus() ;
  document.getElementById("errorBox3").innerHTML = "";
     document.form.secans.focus() ;
  document.getElementById("errorBox4").innerHTML = "enter the answer please";
     
        return false;

   }


 if( pcode != '' && phone =="" )
   {
     document.form.secans.focus() ;
  document.getElementById("errorBox4").innerHTML = "";
  
  document.form.fname.focus();
  document.getElementById("errorBox5").innerHTML = "enter the first name";
  return false;
  }

 if( phone != '' && femail == "" )
   {
     document.form.fname.focus() ;
  document.getElementById("errorBox5").innerHTML = "";
     document.form.lname.focus() ;
  document.getElementById("errorBox6").innerHTML = "enter the last name please";
     
        return false;

   }


 if(femail != '' )
   {
     document.form.lname.focus() ;
  document.getElementById("errorBox6").innerHTML = "";
     
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