<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<%@ page import="java.io.*" %>
<%@ page import="java.net.*" %>
<%@ page import="javax.xml.*" %>
<%@ page import="javax.xml.parsers.*" %>
<%@ page import="org.w3c.dom.*" %>


<%
  /**
  * @Class Name : egovSampleList.jsp
  * @Description : Sample List 화면
  * @Modification Information
  *
  *   수정일         수정자                   수정내용
  *  -------    --------    ---------------------------
  *  2009.02.01            최초 생성
  *
  * author 실행환경 개발팀
  * since 2009.02.01
  *
  * Copyright (C) 2009 by MOPAS  All right reserved.
  */
%>


                                                               
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">

    <%@ include file="/head.jsp" %>
    <%@ include file="/LeftMenu.jsp" %> 
 	

<head>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
    <title><spring:message code="title.sample" /></title>
    <link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/sample.css'/>"/>

    <link rel="stylesheet" href="/css/kendo.common.min.css" />
    <link rel="stylesheet" href="/css/kendo.default.min.css" />

	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/kendo.all.min.js"></script>
 
<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
	<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script> 



     <script type="text/javascript">
      
          $(document).ready(function() {
          	
    
              /* 글 목록 화면 function */
              function fn_egov_selectList() {
              	document.listForm.action = "<c:url value='/egovSampleList.do'/>";
                 	document.listForm.submit();
              }
              
      	    
          	//function
              /* 글 수정 화면 function */
              function fn_egov_select(id) {
              	document.listForm.selectedId.value = id;
                 	document.listForm.action = "<c:url value='/updateSampleView.do'/>";
                 	document.listForm.submit();
              }
              
              /* 글 등록 화면 function */
              function fn_egov_addView() {
                 	document.listForm.action = "<c:url value='/addSample.do'/>";
                 	document.listForm.submit();
              }
              

              /* pagination 페이지 링크 function */
              function fn_egov_link_page(pageNo){
              	document.listForm.pageIndex.value = pageNo;
              	document.listForm.action = "<c:url value='/egovSampleList.do'/>";
                 	document.listForm.submit();
              }	                	
 /*          	
              
   	    	var json_data = 
  	    		JSON.stringify({"RequestDataAsJson":"{\"userName\":\"Test.Broker\",\"password\":\"GZxeH25+hpLu5MA6WyUing==\"}"
  	    			           ,"Requestor":{"UserId":0
  	    			        	    		 ,"UserName":null
  	    			        	    		 ,"FullName":""
  	    			        	    		 ,"Email":null
  	    			        	    		 ,"OrganizationID":0
  	    			        	    		 ,"OriginationChannel":3
  	    			        	    		 ,"SecurityProfileID":0
  	    			        	    		 ,"SecurityProfile":null
  	    			        	    		 ,"IPAddress":""}
  	    					   ,"RequestTime":"2020-01-27T11:57:14.4370423-08:00"});             
              
   	    	
   	    	
  			$.ajax({                                                  
  				url         : 'https://devByteInterface.amwestfunding.com/api/ByteLogin/GetLoginProfile' ,
  				headers     : { "Authorization": "Basic YWRtaW46ODEwMTBhMWYtZTcyOS00ODgzLThhYTQtMjg3NTI4ZGJlOTgz","Content-Type": "application/json"},
  				type        : 'POST',
  				dataType    : 'json',
  				data        : json_data ,      	    	
          	
  				
  				success     : function (result) {
  					//alert("성공");
  				    
 
  					$("#grid").kendoGrid({
                       dataSource: {
                           data: json_data,
                           schema: {
                               model: {
                                   fields: {
                                   	ResponseDataAsJson: { type: "string" },
                                   	Table: { type: "string" },
                                   	UserID: { type: "string" },
                                       OrganizationID: { type: "string" }
                                   }
                               }
                           },
                           pageSize: 20
                       },
                       
                       height: 550,
                       scrollable: true,
                       sortable: true,
                       filterable: true,
                       pageable: {
                           input: true,
                           numeric: false
                       },
                       
                       columns: [
                       	{ field: "ResponseDataAsJson", title: "ResponseDataAsJson", width: "130px" },
                           { field: "Table", title: "Table", width: "130px" },
                           { field: "UserID", title: "UserID", width: "130px" },
                           { field: "OrganizationID", title: "OrganizationID", width: "130px" }
                       ]
                   });        					
  						
  				},
  				
  				
  				error       : function (result) {
  					alert("실패");
  					
  				}
  			});	 */
          });
      </script>

</head>

<body>

</body>

<%@ include file="/bottom.jsp" %> 


</html>
