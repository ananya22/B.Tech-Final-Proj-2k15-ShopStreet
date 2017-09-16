<form  >			
<div class="col-md-5 sign-up text-center">
					<h4>signup</h4>
                                                                                        <div class="cus_info_wrap">
						<label class="labelTop">
						User Id:
						<span class="require">*</span>
						</label>
						<input type="text" name="uid" id="uid">
					</div>
					<div class="cus_info_wrap">
						<label class="labelTop">
						Email Id:
						<span class="require">*</span>
						</label>
						<input type="text" name="emailid" id="eid">
					</div>
					<div class="clearfix"></div>
				    <div class="cus_info_wrap">
						<label class="labelTop">
						Password:
						<span class="require">*</span>
						</label>
						<input type="password" name="pwd" id="pwd">
					</div>
					<div class="clearfix"></div><div class="cus_info_wrap">
						<label class="labelTop confirmpass">
						Conform Password:
						<span class="require">*</span>
						</label>
						<input type="password" name="pwd1" id="pwd1">
                                                               <div>
       <font color="red"><span class="serr" style="display:none"> Password not match</span></font>
            </div>	
</div>

					
                                                                                           <div class="clearfix"></div><div class="cus_info_wrap">
						<label class="labelTop confirmpass">
						Security Question:
						<span class="require">*</span>
						</label>
						<select id="secque" name="secque" >
                                                                       <option value="0" selected>SELECT  SECURITY QUESTION</option>
                                                                            <option  >What is your favorite food???</option>
                                                                            <option >What is your favorite Pet???</option>
                                                                            <option >Who is your favorite teacher???</option>
                                                                            <option  >What is your first Mobile No???</option>
                                                                            <option  >Who is your Best Friend???</option>
                                                                        </select>
					</div>
                                                                                           <div class="clearfix"></div><div class="cus_info_wrap">
						<label class="labelTop confirmpass">
						Security Answer:
						<span class="require">*</span>
						</label>
						<input type="text" name="secans" id="ans">
					</div>
      
					<div class="botton1">
					<input type="submit" value="SIGNIN" class="botton" id="btn">
				</div>
   <div>
       <font color="red"><span class="error" style="display:none"> Please Enter Valid Data</span></font>
       <font color="green">     <span  class="success" style="display:none"> Registration Successfully.......... Click To </span>
       </font>     </div>	
</div>
</form>



<script type="text/javascript" >
$(function() {
$("#btn").click(function() {
var emailid = $("#eid").val();
var uid = $("#uid").val();
var pwd = $("#pwd").val();
var pwd1 = $("#pwd1").val();
var secque = $("#secque").val();
var secans = $("#ans").val();
var dataString = 'emailid='+ emailid + '&uid=' + uid + '&pwd=' + pwd + '&pwd1=' + pwd1+ '&secque=' + secque + '&secans=' + secans;

if(emailid=='' || uid=='' || pwd=='' || pwd1=='' || secque==''  \\ secans='' )
{
$('.success').fadeOut(200).hide();
$('.error').fadeOut(200).show();
}
if(pwd!=pwd1)
{
    
$('.serr').fadeOut(200).show();
}
else
{
$.ajax({
type: "POST",
url: "../userinformation",
data: dataString,
success: function(){
$('.success').fadeIn(200).show();
$('.error').fadeOut(200).hide();
}
});
}
return false;
});
});
</script>