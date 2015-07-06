<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<%@ page session="false" %>

<html>
<head>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!-- ******** css ******** -->
<!-- lib css -->
<spring:url var="baseCss" value="/resources/css/base.css" />
<link rel="stylesheet" type="text/css" href='${baseCss}' />
<style type="text/css">
<!--
body { margin-top:30px; }
#login-nav input { margin-bottom: 15px; }
//-->
</style>
<!-- Bootstrap -->
<spring:url var="bootstrapCss"
	value="/resources/bootstrap-3.3.2-dist/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href='${bootstrapCss}' />

<!-- ******** js ******** -->
<!-- jQuery -->
<spring:url var="jqueryJs" value="/resources/js/jquery-2.1.1.min.js" />
<script type="text/javascript" src="${jqueryJs}"></script>
<!-- Bootstrap -->
<spring:url var="bootstrapJs"
	value="/resources/bootstrap-3.3.2-dist/js/bootstrap.min.js" />
<script type="text/javascript" src="${bootstrapJs}"></script>

<title>MOIKII.momo</title>

</head>

<body>

   <div class="row">
      <div class="col-md-12">
         <nav class="navbar navbar-default" role="navigation">
            <div class="navbar-header">
               <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
               <span class="sr-only">Toggle navigation</span>
               <span class="icon-bar"></span>
               <span class="icon-bar"></span>
               <span class="icon-bar"></span>
               </button>
               <a class="navbar-brand" href="${pageContext.request.contextPath}/twt">MOIKII.momo</a>
            </div>
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
               <ul class="nav navbar-nav">
                  <li class="dropdown">
                     <a href="#" class="dropdown-toggle" data-toggle="dropdown">Pages <b class="caret"></b></a>
                     <ul class="dropdown-menu">
                        <li><a href="${pageContext.request.contextPath}/group/create/init">groupCreate</a></li>
                        <li><a href="${pageContext.request.contextPath}/group/showInfo/init">groupShowInfo</a></li>
                        <li><a href="${pageContext.request.contextPath}/group/reqJoin/init">requestJoin</a></li>
                        <li><a href="${pageContext.request.contextPath}/group/rejectJoin/init">rejectJoin</a></li>
                        <li><a href="${pageContext.request.contextPath}/group/changeRole/init">changeRole</a></li>
                     </ul>
                  </li>
               </ul>
               <ul class="nav navbar-nav navbar-right">
                   <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <span class="glyphicon glyphicon-user"></span> 
                        <strong><sec:authentication property="principal.username" /></strong>
                        <span class="glyphicon glyphicon-chevron-down"></span>
                    </a>
                    	<ul class="dropdown-menu">
                    		<li>
                    			<a href="${pageContext.request.contextPath}/logout">Sign out</a>
                    		</li>
                    	</ul>
                    </li>
               </ul>
            </div>
         </nav>
       </div> 
   </div>
   
   <form:form modelAttribute="rootData" action="${pageContext.request.contextPath}/group/create/select" id="mainForm" method="get" >
  	 <div class="container">
		<c:if test="${not empty rootData.common.mainMessage}">
			<div class="col-md-10 col-md-offset-1">
				<div class="alert alert-info" role="alert">
					<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<span class="sr-only">Error:</span>
	        		<form:input type="hidden" path="common.mainMessage"></form:input>
					<c:out value="${rootData.common.mainMessage}"></c:out>
				</div>
			</div>
		</c:if>
	</div>
	
	<div class="container">	
		<h1>Invite team members</h1>
		<br>
			<div id="main">
				<div class="col-md-5">
					<div class="form-group">
						<c:if test="${not empty rootData.group.memberList}">
							<form:checkboxes items="${rootData.group.memberList}" path="selectUserName" itemLabel="userName"
									delimiter="<br>" itemValue="userName"/>
						</c:if>
					</div>
					<br>
					<input type="submit" class="btn btn-success">
				</div>
			</div>
		</div>
	</form:form>

</body>
</html>