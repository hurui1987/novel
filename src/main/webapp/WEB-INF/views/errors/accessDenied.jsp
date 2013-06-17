<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ include file="../../include/tags.jsp"%>
<c:set var="isAjax" value="${header['X-Requested-With']=='XMLHttpRequest'}"/>
	    
	    <c:if test="${isAjax}">
	    
	    <%response.setStatus(423);%>
	    
	    </c:if>

<spring:message code="access.denied"></spring:message>
