<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
    <%@ include file="../../include/tags.jsp"%>

<script type="text/javascript">  
    function showErrors() {  
        var err_el = document.getElementById('errors');  
        if (err_el.style.display == 'none') {  
            err_el.style.display = '';  
        } else {  
            err_el.style.display = 'none';  
        }  
    }  
</script> 
<c:if test="${empty exception}">
<c:set var="exception" value="${pageContext.errorData.throwable}"></c:set>
</c:if>
    内部错误: ${exception.message }，您可以  
    <a href="javascript:showErrors();">查看详情</a>或直接  
    <a href="${ctx}/login.jsp">返回</a>。  
    <div style="display: none; color: red;" id="errors">  
        <c:forEach items="${exception.stackTrace }" var="e">  
    ${e}<br />  
        </c:forEach>  
    </div>  