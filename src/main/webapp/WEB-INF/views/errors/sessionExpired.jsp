<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
    <%@ include file="../../include/tags.jsp"%>
    <c:set var="isAjax" value="${header['X-Requested-With']=='XMLHttpRequest'}"/>
	    
	    <c:if test="${isAjax}">
	    
	    <%response.setStatus(422);%>
	    
	    </c:if>
    <a href="${ctx}/login.jsp"><spring:message code="session.expired"></spring:message></a>