<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE html>
<html lang="en">
<head>

    <s:include value="/WEB-INF/content/common/meta-tags.jsp"></s:include>
	<s:include value="/WEB-INF/content/common/css-include.jsp"></s:include>
	<title><s:text name="global.application.title" /></title>

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <s:include value="/WEB-INF/content/common/navigation.jsp" ></s:include>

        <div id="page-wrapper">
           
            <div class="row" style="margin-top:20px">
               <div class="col-md-4 clientes">
			    <div class="clientes-content">
			    	<div class="content-title">
			            <span style="padding-left:10px">Accidents (this week)</span>
			    	</div>
			        <div class="number"><span>270</span></div>
			        <div class="line">
			            <div class="line-1"></div>
			            <div class="line-2"></div>
			        </div>
			        <div class="analysis">
			            <div class="quote"><b>40% Colombo</b></div>
			            <a href="#" class="see-more">More<span class="glyphicon glyphicon-circle-arrow-right"></span></a>
			        </div>
			    </div>
			  </div>
			  
			  <div class="col-md-4 concorrentes" style="padding:0 10px">
			    <div class="concorrentes-content">
			        <div class="content-title">
			            <span style="padding-left:10px">Fatal Accidents</span>
			    	</div>
			        <div class="number"><span>12</span>/270</div>
			        <div class="line">
			            <div class="line-1"></div>
			            <div class="line-2"></div>
			        </div>
			        <div class="analysis">
			            <div class="quote"><b>4% in Colombo</b></div>
			            <a href="#" class="see-more">More <span class="glyphicon glyphicon-circle-arrow-right"></span></a>
			        </div>
			    </div>
			  </div>
			  
			  <div class="col-md-4 clientes">
			    <div class="clientes-content">
			    	<div class="content-title">
			            <span style="padding-left:10px">Total Tracking Records</span>
			    	</div>
			        <div class="number"><span>130K</span></div>
			        <div class="line">
			            <div class="line-1"></div>
			            <div class="line-2"></div>
			        </div>
			        <div class="analysis">
			            <div class="quote"><b>Private: 100K</b></div>
			            <a href="#" class="see-more">More<span class="glyphicon glyphicon-circle-arrow-right"></span></a>
			        </div>
			    </div>
			  </div>
			</div>
			
			<div class="row" style="margin-top:20px">
               <div class="col-md-4 clientes">
			    <div class="clientes-content">
			    	<div class="content-title">
			            <span style="padding-left:10px">Total Users</span>
			    	</div>
			        <div class="number"><span>12K</span></div>
			        <div class="line">
			            <div class="line-1"></div>
			            <div class="line-2"></div>
			        </div>
			        <div class="analysis">
			            <div class="quote"><b>Organizations: 6K</b></div>
			            <a href="#" class="see-more">More<span class="glyphicon glyphicon-circle-arrow-right"></span></a>
			        </div>
			    </div>
			  </div>
			  
			  <div class="col-md-4 concorrentes" style="padding:0 10px">
			    <div class="concorrentes-content">
			        <div class="content-title">
			            <span style="padding-left:10px">Accidents (Year) </span>
			    	</div>
			        <div class="number"><span>10333</span></div>
			        <div class="line">
			            <div class="line-1"></div>
			            <div class="line-2"></div>
			        </div>
			        <div class="analysis">
			            <div class="quote"><b>14% in Colombo</b></div>
			            <a href="#" class="see-more">More <span class="glyphicon glyphicon-circle-arrow-right"></span></a>
			        </div>
			    </div>
			  </div>
			  
			  <div class="col-md-4 clientes">
			    <div class="clientes-content">
			    	<div class="content-title">
			            <span style="padding-left:10px">Average Speed (Sri Lanka)</span>
			    	</div>
			        <div class="number"><span>32 km/h</span></div>
			        <div class="line">
			            <div class="line-1"></div>
			            <div class="line-2"></div>
			        </div>
			        <div class="analysis">
			            <div class="quote"><b>Colombo: 11 km/h</b></div>
			            <a href="#" class="see-more">More<span class="glyphicon glyphicon-circle-arrow-right"></span></a>
			        </div>
			    </div>
			  </div>
			</div>
		
		</div>
    </div>
    
    <footer>
        <s:include value="/WEB-INF/content/common/footer.jsp" ></s:include>
    </footer>

    <s:include value="/WEB-INF/content/common/js-include.jsp" ></s:include>

	 <script>
	 	jQuery('#mainMenuId1').addClass('active');
	 </script>
	 
</body>

</html>