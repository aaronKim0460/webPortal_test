<!DOCTYPE html>
<html>

<head>
		

    <head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<meta name="format-detection" content="telephone=no" />
		<meta name="description" content="Focused on providing home loans responsibly throughout the communities we serve, our goal is to provide an exceptional customer experience for borrower." />
		<meta name="title" content="Focused on providing home loans responsibly throughout the communities we serve, our goal is to provide an exceptional customer experience for borrower.">
		<meta name="author" content="AmWest Funding Corp" />
		<meta name="application-name" content="AmWest Funding Corp Website" />
		<meta name="keywords" content="Mortgage, Home Loans, Refinance, Mortgage Rates, HARP, Jumbo, VA, FHA Loan, Lending ">
		<title>We deliver simply better home loans - AmWest Funding</title>
		<link rel="StyleSheet" href="./css/camera.css" />
		<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
		<!-- <link href="./css/bootstrap.css" rel="stylesheet"/> -->




    	<%-- <%@ include file="/bottom.jsp" %>   --%>

		<script src="./js/jquery-3.4.1.js"></script>
		<script src="./js/camera.js"></script>
        <script src="./js/jvectormap/jquery-jvectormap.js"></script>
		<script src="./js/jvectormap/jvectormap-src.js"></script>	
		<script src="./js/canvasloader.js"></script>	
		<script src="./js/AmWest.CommonControl.js"></script>
		
		<link rel="StyleSheet" href="./css/menu.css" />


		<%@ include file="/head.jsp" %>  
		<%@ include file="/LeftMenu.jsp" %>

		<style>
		
		
 			.welcomeMain div {
				position:absolute;
			} 

			.welcome_msg {
			    top: 170px;
			    left: 680px;
			    width: 817px;
			    height: 44px;
			    /* UI Properties */
			    text-align: center;
			    font: Bold 35px/42px Open Sans;
			    letter-spacing: 0px;
			    color: #142D53;
			    opacity: 1;
			}
		</style>

		

		<script type="text/javascript">
			
		
			$("#bef_login_img").hide();
			$("#top_menu").hide();
			$("#header_line").show();
			$("#bookmark_div").show();
			$("#bookmark_div").show();
			$("#role_changing_div").show();
			$("#my_img").show();
			$("#my_name").show();
		
		
		
		
			function fnImgChangeOver(ID) {
				var url="./images/ico_"+ID+"2.png";
				if (ID =='prdfinder') {
					document.images.prdfinder.src= url;
				}
				else if (ID =='createloan') {
					document.images.createloan.src= url;
				}
				else if (ID =='pipeline') {
					document.images.pipeline.src= url;
				}
				else if (ID =='products') {
					document.images.products.src= url;
				}
				else if (ID =='ratesheets') {
					document.images.ratesheets.src= url;
				}
				else if (ID =='apprisal') {
					document.images.apprisal.src= url;
				}
				else if (ID =='tools') {
					document.images.tools.src= url;
				}
				else if (ID =='announcement') {
					document.images.announcement.src= url;
				}
				else if (ID =='mngaccount') {
					document.images.mngaccount.src= url;
				}

			}
			
			function fnImgChangeOut(ID) {
				var url="./images/ico_"+ID+".png";
				if (ID =='prdfinder') {
					document.images.prdfinder.src= url;
				}
				else if (ID =='createloan') {
					document.images.createloan.src= url;
				}
				else if (ID =='pipeline') {
					document.images.pipeline.src= url;
				}
				else if (ID =='products') {
					document.images.products.src= url;
				}
				else if (ID =='ratesheets') {
					document.images.ratesheets.src= url;
				}
				else if (ID =='apprisal') {
					document.images.apprisal.src= url;
				}
				else if (ID =='tools') {
					document.images.tools.src= url;
				}
				else if (ID =='announcement') {
					document.images.announcement.src= url;
				}
				else if (ID =='mngaccount') {
					document.images.mngaccount.src= url;
				}

			}
			
		</script>			
		

</head>



  <body style="width:1580px;">
  
  <div class="welcomeMain">
  
	<div class="welcome_msg" >
	Welcome Brian Lee. (AmWest Financial) 	</div>
	<div style="left:575px;top:285px;width:1028px; height:340px;">
		 <div class="main_menu" id="main_menu" style="width:1028px;background-color:#FFFFFF;">
		 <ul>
			 <li onmouseover="fnImgChangeOver('prdfinder')" onmouseout="fnImgChangeOut('prdfinder')">
			 	<img id="prdfinder" src="./images/ico_prdfinder.png" style="margin-top:14px;"><a href="#">Product Finder</a>
			 </li>
			 <li onmouseover="fnImgChangeOver('createloan')" onmouseout="fnImgChangeOut('createloan')">
			 	<img id="createloan" src="./images/ico_createloan.png" style="margin-top:17px;"><a href="#">Create Loan</a>
			 </li>
			 <li onmouseover="fnImgChangeOver('pipeline')" onmouseout="fnImgChangeOut('pipeline')">
			 	<img id="pipeline" src="./images/ico_pipeline.png" style="margin-top:15px;"><a href="#">Pipeline</a>
			 </li>
			 <li onmouseover="fnImgChangeOver('products')" onmouseout="fnImgChangeOut('products')">
			 	<img id="products" src="./images/ico_products.png" style="margin-top:13px;"><a href="#">Products</a>
			 </li>
			 <li onmouseover="fnImgChangeOver('ratesheets')" onmouseout="fnImgChangeOut('ratesheets')">
			 	<img id="ratesheets" src="./images/ico_ratesheets.png" style="margin-top:11px;"><a href="#">Rate Sheets</a>
			 </li>
			 <li onmouseover="fnImgChangeOver('apprisal')" onmouseout="fnImgChangeOut('apprisal')">
			 	<img id="apprisal" src="./images/ico_apprisal.png" style="margin-top:14px;"><a href="#">Appraisal</a>
			 </li>
			 <li onmouseover="fnImgChangeOver('tools')" onmouseout="fnImgChangeOut('tools')">
			 	<img id="tools" src="./images/ico_tools.png" style="margin-top:18px;"><a href="#">Tools</a>
			 </li>
			 <li onmouseover="fnImgChangeOver('announcement')" onmouseout="fnImgChangeOut('announcement')">
			 	<img id="announcement" src="./images/ico_announcement.png" style="margin-top:15px;"><a href="#">Announcement</a>
			 </li>
			 <li onmouseover="fnImgChangeOver('mngaccount')" onmouseout="fnImgChangeOut('mngaccount')">
			 	<img id="mngaccount" src="./images/ico_mngaccount.png" style="margin-top:15px;"><a href="#">Manage Accounts</a>
			 </li>
		 </ul>
		 </div>
	</div>
	
	</div>
	

	<%@ include file="/bottom.jsp" %>




</html>
