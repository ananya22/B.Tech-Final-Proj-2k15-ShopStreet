function Submit(){
 var emailRegex = /^[A-Za-z0-9._]*\@[A-Za-z]*\.[A-Za-z]{2,5}$/;
 
var     uname1 = document.form.userName.value,
    fname1 = document.form.userEmail.value,
    
            lname1 = document.form.userPhone.value,
        addr1 = document.form.userMsg.value;
 
    
    
    
 if( uname1 == "" )
   {
     document.form.userName.focus() ;
  document.getElementById("errorBox11").innerHTML = "enter the name please";
     return false;
   }


 if( uname1 != '' && fname1 == "" )
   {
     document.form.userName.focus() ;
  document.getElementById("errorBox11").innerHTML = "";
     document.form.userEmail.focus() ;
  document.getElementById("errorBox12").innerHTML = "enter the Emailid please";
     
        return false;

   }
   

   if(!emailRegex.test(fname1)){
  document.form.userEmail.focus();
  document.getElementById("errorBox12").innerHTML = "enter the valid email";

        
        return false;

   }
 if( fname1 != '' && lname1 == "")
   {
     document.form.userEmail.focus() ;
  document.getElementById("errorBox12").innerHTML = "";
     document.form.userPhone.focus() ;
  document.getElementById("errorBox21").innerHTML = "enter the phone no. please";
   
        return false;

   }

/*
 if( lname1 != '' && addr1 == "" )
   {
     document.form.userPhone.focus() ;
  document.getElementById("errorBox21").innerHTML = "";
     document.form.userMsg.focus() ;
  document.getElementById("errorBox31").innerHTML = "enter the address please";
     
        return false;

   }
*/
 if(lname1 != '' )
   {
     document.form.userPhone.focus() ;
  document.getElementById("errorBox21").innerHTML = "";
return false;
   }

}