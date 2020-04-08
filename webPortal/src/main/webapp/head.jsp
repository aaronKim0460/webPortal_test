<!DOCTYPE html>
<html>
    <head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<meta name="format-detection" content="telephone=no" />
		<meta name="description" content="Focused on providing home loans responsibly throughout the communities we serve, our goal is to provide an exceptional customer experience for borrower." />
		<meta name="title" content="Focused on providing home loans responsibly throughout the communities we serve, our goal is to provide an exceptional customer experience for borrower.">
		<meta name="author" content="AmWest Funding Corp" />
		<meta name="application-name" content="AmWest Funding Corp Website" />
		<meta name="keywords" content="Mortgage, Home Loans, Refinance, Mortgage Rates, HARP, Jumbo, VA, FHA Loan, Lending ">
		<title>We deliver simply better home loans - AmWest Funding</title>
		<link rel="StyleSheet" href="./css/head.css" /> 
		<link rel="StyleSheet" href="./css/menu.css" />
		
		
		
		<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
		<script src="./js/jquery-3.4.1.js"></script>

		<script src="./js/jsencrypt.min.js"></script>


		<script type="text/javascript">
			
			function fnBefLogin() {


				location.href = "index.jsp";
				
				$("#bef_login_img").show();
				$("#top_menu").show();
				$("#header_line").hide();
				$("#bookmark_div").hide();
				$("#role_changing_div").hide();
				$("#my_img").hide();
				$("#my_name").hide();
				
				
				
			}
			
			function fnAfterLogin() {
	
				location.href = "content_aft_login.jsp";
				
				$("#bef_login_img").hide();
				$("#top_menu").hide();
				$("#header_line").show();
				$("#bookmark_div").show();
				$("#bookmark_div").show();
				$("#role_changing_div").show();
				$("#my_img").show();
				$("#my_name").show();
				
				
	

			}

			/*로그인창 컨트롤 by billy kim */
			function fnLoginform(val) {
				if (val == 'enable') {
					$("#loginForm").show();
					$("#mask").show();
				}
				else if (val == 'disable') {
					$("#loginForm").hide();
					$("#mask").hide();
				}
			}

			
			 /* kimbc  start */
			
			$(document).ready(function() {
				
				
			      $('#btnLogin').click(function() {
			    	  
			        var action = $('#frmLogin').attr("action");
			        
			       
			        
			        var form_data = {userId: $('#userId').val(),  userPw: $('#userPw').val()	
	
			        };

			        
			        //var v_userNm = $('#userId').val();
			        //var v_userPw = $('#userPw').val();
			            
			        var v_userNm = "Test.Broker";
			        var v_userPw = "GZxeH25+hpLu5MA6WyUing=="; 

			        //ID : test.broker
			        //Pass : Awf2019300120
			        
			       


			        var loginInfo = "{\"userName\":\"" + v_userNm + "\",\"password\":\"" + v_userPw + "\"}";
			        console.log(loginInfo);
	
			        
			       //return;
			        
			        var json_data = 
			        	
		  	    		JSON.stringify(
		  	    				
		  	    				//{"RequestDataAsJson":"{\"userName\":\"Test.Broker\",\"password\":\"GZxeH25+hpLu5MA6WyUing==\"}"
		  	    					
		  	    				{"RequestDataAsJson":loginInfo
		  	    					
				  	    			           ,"Requestor":{"UserId":0
				  	    			        	    		 ,"UserName":null
				  	    			        	    		 ,"FullName":""
				  	    			        	    		 ,"Email":null
				  	    			        	    		 ,"OrganizationID":0
				  	    			        	    		 ,"OriginationChannel":3
				  	    			        	    		 ,"SecurityProfileID":0
				  	    			        	    		 ,"SecurityProfile":null
				  	    			        	    		 ,"IPAddress":""}
				  	    					   ,"RequestTime":"2020-01-27T11:57:14.4370423-08:00"}
		  	    					   );             
		              
		   	    	
		   	    	
		  			$.ajax({                                                  
		  				url         : 'https://devByteInterface.amwestfunding.com/api/ByteLogin/GetLoginProfile' ,
		  				headers     : { "Authorization": "Basic YWRtaW46ODEwMTBhMWYtZTcyOS00ODgzLThhYTQtMjg3NTI4ZGJlOTgz","Content-Type": "application/json"},
		  				type        : 'POST',
		  				dataType    : 'json',
		  				data        : json_data ,      	    	
		          	
		  				
		  				success     : function (result) {

		  					var obj = JSON.parse(result.ResponseDataAsJson);

		  					if(result.IsSuccess == true ){
		  						alert("Login success!!!!!!!!");
		  					}else{
		  						alert(result.ErrorMessage);
		  						
		  					}
		  					
	
		  					//console.log(obj.Table[0].UserOrgProfileID);
		  					//console.log(obj.Table[0].UserID);

		  					$.each(result, function (key, value ) {
		  						//console.log('key:' + key + ' / ' + 'value:' + value);

		  					});
		  					
		  					
		  					

							//여러개의 데이타가 있을경우
						
							//$.each(result,function(key,value) {
							
								//console.log('key:'+key);
								/* console.log('name:'+value.Table[0].UserID); */
								/* console.log('age:'+value.age); */
							
							//});

		  					
		  				    sessionStorage.setItem("userId", form_data.userId);
							$('#msg').html("<p style='color:green; font-weight:bold'> Login success</p>");
		 		
		  				},
		  				
		  				
		  				error       : function (result) {
		  					
		  					$('#msg').html("<h2>Error</h2>");
		  				}
		  			});	
			     });
			    });

			 
			 
			 //////////////////////////////////////////////////////////////////////////////////////////////////////
			 
			 
			var Base64 = {
				    // private property
				    _keyStr : "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=",
				 
				    // public method for encoding
				    encode : function (input) {
				        var output = "";
				        var chr1, chr2, chr3, enc1, enc2, enc3, enc4;
				        var i = 0;
				 
				        input = Base64._utf8_encode(input);
				 
				        while (i < input.length) {
				 
				            chr1 = input.charCodeAt(i++);
				            chr2 = input.charCodeAt(i++);
				            chr3 = input.charCodeAt(i++);
				 
				            enc1 = chr1 >> 2;
				            enc2 = ((chr1 & 3) << 4) | (chr2 >> 4);
				            enc3 = ((chr2 & 15) << 2) | (chr3 >> 6);
				            enc4 = chr3 & 63;
				 
				            if (isNaN(chr2)) {
				                enc3 = enc4 = 64;
				            } else if (isNaN(chr3)) {
				                enc4 = 64;
				            }
				 
				            output = output +
				            this._keyStr.charAt(enc1) + this._keyStr.charAt(enc2) +
				            this._keyStr.charAt(enc3) + this._keyStr.charAt(enc4);
				 
				        }
				 
				        return output;
				    },
				 
				    // public method for decoding
				    decode : function (input) {
				        var output = "";
				        var chr1, chr2, chr3;
				        var enc1, enc2, enc3, enc4;
				        var i = 0;
				 
				        input = input.replace(/[^A-Za-z0-9\+\/\=]/g, "");
				 
				        while (i < input.length) {
				 
				            enc1 = this._keyStr.indexOf(input.charAt(i++));
				            enc2 = this._keyStr.indexOf(input.charAt(i++));
				            enc3 = this._keyStr.indexOf(input.charAt(i++));
				            enc4 = this._keyStr.indexOf(input.charAt(i++));
				 
				            chr1 = (enc1 << 2) | (enc2 >> 4);
				            chr2 = ((enc2 & 15) << 4) | (enc3 >> 2);
				            chr3 = ((enc3 & 3) << 6) | enc4;
				 
				            output = output + String.fromCharCode(chr1);
				 
				            if (enc3 != 64) {
				                output = output + String.fromCharCode(chr2);
				            }
				            if (enc4 != 64) {
				                output = output + String.fromCharCode(chr3);
				            }
				 
				        }
				 
				        output = Base64._utf8_decode(output);
				 
				        return output;
				 
				    },
				 
				    // private method for UTF-8 encoding
				    _utf8_encode : function (string) {
				        string = string.replace(/\r\n/g,"\n");
				        var utftext = "";
				 
				        for (var n = 0; n < string.length; n++) {
				 
				            var c = string.charCodeAt(n);
				 
				            if (c < 128) {
				                utftext += String.fromCharCode(c);
				            }
				            else if((c > 127) && (c < 2048)) {
				                utftext += String.fromCharCode((c >> 6) | 192);
				                utftext += String.fromCharCode((c & 63) | 128);
				            }
				            else {
				                utftext += String.fromCharCode((c >> 12) | 224);
				                utftext += String.fromCharCode(((c >> 6) & 63) | 128);
				                utftext += String.fromCharCode((c & 63) | 128);
				            }
				 
				        }
				 
				        return utftext;
				    },
				 
				    // private method for UTF-8 decoding
				    _utf8_decode : function (utftext) {
				        var string = "";
				        var i = 0;
				        var c = c1 = c2 = 0;
				 
				        while ( i < utftext.length ) {
				 
				            c = utftext.charCodeAt(i);
				 
				            if (c < 128) {
				                string += String.fromCharCode(c);
				                i++;
				            }
				            else if((c > 191) && (c < 224)) {
				                c2 = utftext.charCodeAt(i+1);
				                string += String.fromCharCode(((c & 31) << 6) | (c2 & 63));
				                i += 2;
				            }
				            else {
				                c2 = utftext.charCodeAt(i+1);
				                c3 = utftext.charCodeAt(i+2);
				                string += String.fromCharCode(((c & 15) << 12) | ((c2 & 63) << 6) | (c3 & 63));
				                i += 3;
				            }
				 
				        }
				 
				        return string;
				    }
				}


			
			//console.log(Base64.encode("admin:81010a1f-e729-4883-8aa4-287528dbe983")); 
			
			 /* kimbc  end */

		</script>
    </head>
    <body>
    
    <div class="head-containerMain">
     
        <div class="head-container">
	        <div class = "head_logo" id="head_logo">
	        </div>
	        <div style="top:30px;left:350px;"><button type="button" onclick="fnBefLogin()">before Login</button></div>
			<div style="top:30px;left:450px;"><button type="button" onclick="fnAfterLogin()">after Login</button></div>
	        <div id="catchphrase">
	        	<i>We deliver simply better home loans</i><br>
	        	Corporate Office: <b>714.831.3333</b>
	        </div>
	        
	        
	        
	        
	        
	        <!-- kimbc  start-->
	      	<!-- <div>   
			  <form id="frmLogin" name="frmLogin" action="login_ok.jsp" method="post">
			    <input type="text" id="userId" name="userId" placeholder="id" /><br/>
			    <input type="text" id="userPw" name="userPw" placeholder="password" />
			    <input type="button" id="btnLogin" value="login" />
			  </form>
		
		 	<div id="msg"></div> -->
		 </div>	
			
			
			<!-- kimbc  end-->
	        
	        
	        
	        
	        
<!--hide after login-->
	        <div class="bef_login_img" id="bef_login_img">
	        </div>
	        
<!--로그인form 시작-->
<div id="test" onclick="fnLoginform('enable')" style="left: 1761px; top: 33px; width: 120px; height: 52px;"></div>
		<div id="loginForm" class="lb-container" style="width: 378px;top:90px;left:1510px;display:none;">
			<div class="container-login no-padding">
			    <h4>APPROVED USER LOGIN</h4>
			    <div class="col-md-12">
			        <div id="loginForm">
						<form action="/Account/Login" class="form-horizontal" id="myForm" method="post" novalidate="novalidate" style="width: 324px;height: 308px;color:#152d53;"><input name="__RequestVerificationToken" type="hidden" value="Kejsl_OPjBEw7Jwo3HwrvtzbfX3BADLRkVaDS7DyKtgFFhLoaAghuG8-IeTX4Kh7aFzawmXQZaF9UUx4ew2xWOwcnl4mtwqW59EwsjGc4qc1">                <div class="form-group form-field">
	                    <div class="control-label">Username</div>
	                    <div class="col-xs-12">
                        <input class="form-control" data-val="true" data-val-issafeparam="The field Username is invalid." data-val-length="The field Username must be a string with a maximum length of 50." data-val-length-max="50" data-val-required="The Username field is required." id="Username" name="Username" type="text" value="test.broker">
                    </div>
                </div>
                <div class="form-group form-field">
                    <div class="control-label">Password</div>
                    <div class="col-xs-12">
                        <input class="form-control" data-val="true" data-val-required="The Password field is required." id="Password" name="Password" type="password">
                    </div>
                </div>
                <div class="form-group form-field action-field">
                    <div class="col-xs-7">
                        <a class="ForgotPassword" href="/Account/Reset-Password" target="_top">Forgot password?</a>
                        <div class="checkbox">
                            <input checked="checked" id="RememberMe" name="RememberMe" type="checkbox" value="true"><input name="RememberMe" type="hidden" value="false">
                            <label for="RememberMe"><span><span></span></span> Remember Me</label>
                        </div>
                    </div>
                    <div class="col-xs-5 text-right">
                        <button type="submit" id="btnLoginSubmit" class="btn btn-danger" style="line-height: 23px;padding: 5px 20px 5px 20px;">Login <span class="fa fa-arrow-circle-right"></span></button>
                    </div>
                </div>
                <div class="form-group form-field">
                    <div class="col-xs-12 text-center">
                        <div class="form-errorMessage">
                            &nbsp;
                        </div>
                    </div>
                </div>
                <div class="form-group form-field">
                    <div class="col-xs-12">
                        <a href="/Account/ApplyBroker" target="_top" class="btn btn-primary btn-request">Request Contact from AmWest</a>
                    </div>
                </div>
</form>        </div>
    </div>

		</div>
</div>
<div id="mask" style="display:block none;z-index:550;" onclick="fnLoginform('disable')"></div>
<!--로그인form 끝-->	        

				 <div class="menu" id="top_menu">

					<ul>
						
						<li style="margin-left:47px">
					         <a href="#">Become a Broker</a>
						</li>
						
				      	 <li class="active sub" style="margin-left:50px">
                         	<a href="#">Announcement</a>
								<ul>
									<li class='sub'>
										 <a href="#">Announcement</a>
									</li>
									<li class='sub'>
										<a href="#">Important Dates</a>
									</li>
									<li class='sub'>
										<a href="#">Disaster Bulletins</a>
									</li>
								</ul>
                         </li>
                         <li style="margin-left:42px">
                         	<a href="#">Closing DOC (Scanned Docs)</a>
                         </li>
				      	 <li class="active sub" style="margin-left:50px">
                        	<a href="#">About Us </a>
	                           	<ul>
									<li class='sub'>
	                                    <a href="#">Overview</a>
	                                </li>
									<li class='sub'>
										<a href="#">Careers</a>
									</li>
									<li class='sub'>
                                        <a href="#">FAQ</a>     
                                    </li>
									<li class='sub'>
                                        <a href="#">Contact Us</a>
                                    </li>
								</ul>
                          </li>
                    </ul>
                </div>

		
			
    <!--hide after login-->


	<!--show after login-->
	        <div class="bookmark_div" id="bookmark_div" hidden="hidden">
			 	<div class="bookmark_img">
		        </div>
		        <div class="my_bookmark">
		        	My Bookmark
		        </div>
	        </div>	       
	<!-- Role Changing div (show after login)-->
	        <div class="role_changing_div" id="role_changing_div" hidden="hidden">
		        <div class="role_changing_img">
		        </div>
		        <div class="role_changing">
		        	Role Changing
		        </div>
	        </div>
	<!-- my account (show after login)-->
	        <div class="my_img" id="my_img" hidden="hidden">
	        </div>
	        <div class="account_menu" id="my_name" hidden="hidden">
				<ul>
			      	 <li class="active sub">
                     	<a href="#">Alanis Morissette Long Name (Broker)<br/>(AmWest Funding Corp)</a>
							<ul>
								<li class='sub' style="height:58px;">
									 <a href="#" style="height:58px;line-height:1.5; padding-top:10px;"><b>Alanis Morissette Long Name (Broker)</b><br>Broker Manager</a>
								</li>
								<li class='sub'>
									<a href="#"><b>My Account</b></a>
								</li>
								<li class='sub'>
									<a href="#"><strong>My settings</strong></a>
								</li>
								<li class='sub'>
									<a href="#"><strong>Log out</strong></a>
								</li>
							</ul>
                     </li>

                </ul>
            </div>








	        
	        
	        
	        
	        
	        
	        
	        
<!--	   
			<div class="my_button" id="my_button" hidden="hidden">
			</div>
			<div class="my_menu" id="my_menu" hidden="hidden">
				<div class="my_menu_text" id="my_menu_1" style="top:10px"><b>Brian Lee(Broker)</b></div>
				<div class="my_menu_text" id="my_menu_2" style="top:40px">Broker manager</div>
				<div class="my_menu_text" id="my_menu_3" style="top:70px"><b>My Account</b></div>
				<div class="my_menu_text" id="my_menu_4" style="top:100px"><b>Log Out</b></div>
			</div>
			-->
			<div class="header_line" id="header_line" style="left: 24px; top: 100px">
			</div>
</div>
	<!--show after login-->

    </body>
</html>