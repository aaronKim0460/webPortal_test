<!doctype html>
<html>
<head>
	<meta charset="UTF-8">
	<title>http://www.blueb.co.kr</title>
	
	<link rel="StyleSheet" href="/css/menu.css" />
	<link rel="StyleSheet" href="/css/LeftMenu.css" />
	
<style>
/*start reset css*/



</style>

<script type="text/javascript">
	
	$(document).ready(function() {
		
        $("#products").mouseover(function(){
        	$("#productsPlusMinus").attr("src","/images/minus.png")
        });
        $("#products").mouseout(function(){
        	$("#productsPlusMinus").attr("src","/images/plus.png")
        });
        
        
        $("#tools").mouseover(function(){
        	$("#toolsPlusMinus").attr("src","/images/minus.png")
        });
        $("#tools").mouseout(function(){
        	$("#toolsPlusMinus").attr("src","/images/plus.png")
        });
        
        
        $("#announcement").mouseover(function(){
        	$("#announcementPlusMinus").attr("src","/images/minus.png")
        });
        $("#announcement").mouseout(function(){
        	$("#announcementPlusMinus").attr("src","/images/plus.png")
        });
        
        
        $("#manageAccounts").mouseover(function(){
        	$("#manageAccountsPlusMinus").attr("src","/images/minus.png")
        });
        $("#manageAccounts").mouseout(function(){
        	$("#manageAccountsPlusMinus").attr("src","/images/plus.png")
        });

	})
	


</script>



</head>

<body>
	
	<!-- <div id="leftMenu-containerMain"> -->

		<div id="container">
			<nav>
			    <div style="position:absolute;">
			    	<div class="search_box">
						<div>
							<input class="search_text" type="text" name="search_text" id="search_text"   placeholder="Enter borrower name or loan #"/>
						</div>
			    	</div>
			    	<div class="search_button" id="btnsearch">
						<a href= ""><img src="/images/btnSearch.png" alt="aaaa" /></a>
			    	</div>
			    </div>		
			
				<ul>
					<li class="home"><a href=""> <img src="/images/home.png" width="18px" height="18px"  align="bottom"/> &nbsp;&nbsp; Home</a></li>
					<li class="home"><a href=""> <img src="/images/productFinder.png" width="18px" height="18px"  align="bottom"/> &nbsp;&nbsp; Product Finder</a></li>
					<li class="home"><a href=""> <img src="/images/createLoan.png" width="18px" height="18px"  align="bottom"/> &nbsp;&nbsp; Create Loan</a></li>
					<li class="home"><a href=""> <img src="/images/pipeline.png" width="18px" height="18px"  align="bottom"/> &nbsp;&nbsp; Pipeline</a></li>
						
					<li id="products" class="products"> <a href=""> <img src="/images/products.png" width="18px" height="18px"  align="bottom"/> 
													<img id="productsPlusMinus" class="plus_minus"  src="/images/plus.png" width="14px" height="14px" /> &nbsp;&nbsp; Products</a>														
						<ul>
							<li><a href="">  <img src="/images/products.png" width="15px" height="15px"  align="bottom"/> &nbsp;&nbsp; Agency</a></li>
							<li><a href="">  <img src="/images/products.png" width="15px" height="15px"  align="bottom"/> &nbsp;&nbsp; Government</a></li>
							<li><a href="">  <img src="/images/products.png" width="15px" height="15px"  align="bottom"/> &nbsp;&nbsp; Portfolio</a></li>
							<li><a href="">  <img src="/images/products.png" width="15px" height="15px"  align="bottom"/> &nbsp;&nbsp; Non-Conforming</a></li>
						</ul>	
	     			</li>
					
					<li class="home"><a href=""> <img src="/images/rateSheets.png" width="18px" height="18px"  align="bottom"/> &nbsp;&nbsp; Rate Sheets</a></li>
					<li class="home"><a href=""> <img src="/images/appraisal.png" width="18px" height="18px"  align="bottom"/> &nbsp;&nbsp; Appraisal</a></li>
					
					
					
					<li id="tools" class="tools"><a href=""><img src="/images/tools.png" width="18px" height="18px"  align="bottom"/>
												    <img id="toolsPlusMinus" class="plus_minus"  src="/images/plus.png" width="14px" height="14px" />&nbsp;&nbsp; Tools</a>
						<ul>
							<li><a href="">  <img src="/images/tools.png" width="15px" height="15px"  align="bottom"/> &nbsp;&nbsp; Forms</a></li>
							<li><a href="">  <img src="/images/tools.png" width="15px" height="15px"  align="bottom"/> &nbsp;&nbsp; Resources</a></li>
							<li><a href="">  <img src="/images/tools.png" width="15px" height="15px"  align="bottom"/> &nbsp;&nbsp; Trainings</a></li>
							<li><a href="">  <img src="/images/tools.png" width="15px" height="15px"  align="bottom"/> &nbsp;&nbsp; TRID</a></li>
							<li><a href="">  <img src="/images/tools.png" width="15px" height="15px"  align="bottom"/> &nbsp;&nbsp; Lender Prepared Loan Estimate</a></li>
							<li><a href="">  <img src="/images/tools.png" width="15px" height="15px"  align="bottom"/> &nbsp;&nbsp; Submission Checklists</a></li>
							<li><a href="">  <img src="/images/tools.png" width="15px" height="15px"  align="bottom"/> &nbsp;&nbsp; Flyers</a></li>
							<li><a href="">  <img src="/images/tools.png" width="15px" height="15px"  align="bottom"/> &nbsp;&nbsp; Approved Credit Vendors</a></li>
							
						</ul>	
	     			</li>
	     			<li id="announcement" class="announcement"><a href=""> <img src="/images/announcement.png" width="18px" height="18px"  align="bottom"/> 
	     											<img id="announcementPlusMinus" class="plus_minus"  src="/images/plus.png" width="14px" height="14px" />&nbsp;&nbsp; Announcement</a>
						<ul>
							<li><a href="">  <img src="/images/announcement.png" width="15px" height="15px"  align="bottom"/> &nbsp;&nbsp; Announcement</a></li>
							<li><a href="">  <img src="/images/announcement.png" width="15px" height="15px"  align="bottom"/> &nbsp;&nbsp; Important Dates</a></li>
							<li><a href="">  <img src="/images/announcement.png" width="15px" height="15px"  align="bottom"/> &nbsp;&nbsp; Disaster Bulletins</a></li>
						</ul>
	     			</li>
	     			<li id="manageAccounts" class="products"><a href=""> <img src="/images/manageAccounts.png" width="18px" height="18px"  align="bottom"/> 
	     											<img id="manageAccountsPlusMinus" class="plus_minus"  src="/images/plus.png" width="14px" height="14px" />&nbsp;&nbsp; Manage Accounts</a>
						<ul>
							<li><a href="">  <img src="/images/manageAccounts.png" width="15px" height="15px"  align="bottom"/> &nbsp;&nbsp; Set Start Page</a></li>
							<li><a href="">  <img src="/images/manageAccounts.png" width="15px" height="15px"  align="bottom"/> &nbsp;&nbsp; Personal Info</a></li>
							<li><a href="">  <img src="/images/manageAccounts.png" width="15px" height="15px"  align="bottom"/> &nbsp;&nbsp; My Bookmarks</a></li>
							<li><a href="">  <img src="/images/manageAccounts.png" width="15px" height="15px"  align="bottom"/> &nbsp;&nbsp; Request User Create</a></li>
						</ul>
	     			</li>
				</ul>
			</nav>
		</div>
	</div>
</body>
</html>