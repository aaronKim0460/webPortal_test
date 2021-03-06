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

<head>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
    <title><spring:message code="title.sample" /></title>
    
    <link type="text/css" rel="stylesheet" href="<c:url value='/css/egovframework/sample.css'/>"/>
    




    <link rel="stylesheet" href="/css/kendo.common.min.css" />
    <link rel="stylesheet" href="/css/kendo.default.min.css" />



	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/kendo.all.min.js"></script>
    

<!-- 	<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
	<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script> -->

    <script type="text/javaScript" language="javascript" defer="defer">

    
    
    
    
    
    
    
    
	    //onload
	    $(document).ready(function () {

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	  
/*      
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


			
			alert(Base64.encode("admin:81010a1f-e729-4883-8aa4-287528dbe983")); // 인코딩되어 7JWI64WV7ZWY7IS47JqU 출력됨 */
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	    	
	    	$("#p1").text("테스트입니다.");
	    	
			
	    	//const jsonObj = JSON.parse(obj1.ResponseDataAsJson1);  // form의 값을 넣은 오브젝트를 JSON형식으로 변환
	    	
/* 	    	var json_data = 
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
					alert("성공");
				    
				},
				error       : function (result) {
					alert("실패");
					
				}
			});
		 */

	    });
    

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

    </script>
</head>


<!-- <body style="text-align:center; margin:0 auto;    width: 500px;   height: 300px;        display:inline; padding-top:100px;"> -->



<body>
       <!--  <script src="../content/shared/js/products.js"></script> -->

        <div id="example">
            <div id="grid"></div>

            <script>
            
            

 	    	
                $(document).ready(function() {
                	
          
                    
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
        				
                		
	                    
        			});	
                });
            </script>
</div>


</body>


  <%@ include file="/bottom.jsp" %>  

</html>
