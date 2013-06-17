<script language="javascript">
$(document).ajaxComplete(function(event,request, settings){
	  //服务器内部错误
	  if(request.status==500){
        alert('<spring:message code="exception.server.internal.error"></spring:message>'); 
	   }
	  //资源找不到
	  else if(request.status==404){
		  alert('<spring:message code="exception.resource.notfound"></spring:message>');
	  }
	  //非法请求，有sql注入或xss风险
	  else if(request.status==420){
		  alert('<spring:message code="exception.sercurity"></spring:message>');
	  }
	  //含有敏感词
	  else if(request.status==421){
		  alert('<spring:message code="exception.sensitive.word"></spring:message>');
	  }
	  //session过期或未登录
	  else if(request.status==422){
		  alert('<spring:message code="session.expired"></spring:message>');
		  window.location="${ctx}/login.jsp";
	  }
	  //访问拒绝，没有权限
	  else if(request.status==423){
		  alert('<spring:message code="access.denied"></spring:message>');
	  }
});
</script>