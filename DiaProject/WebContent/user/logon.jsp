<%@ page contentType="text/html;charset=euc-kr" %>

<%@ page import="spring.domain.User" %>

<!-- 
	1. �α��� ����Ȯ�� :: Work Flow Control
		�� ��α��� �ΰ��  : �α��� ȭ�� display 
	    �� �α����� ��� : �̹� �α��� �� ȸ������ display
	2. �α��� Ȯ����...
		�� �α����� ȸ���� session ObjectScope�� User��ü�� ����, active �� true
		�� User��ü�� ���� �� User�� active ���� true / false ������ �Ǵ�
====================================================
==> logon.jsp�� view  ���� ��  Work Flow Control (����� �ڵ�)�� ����
====================================================	
-->

<%-- <%
	String userId = "���̵��Է�";
	String password = "�н������Է�";
%> --%>

<html>
	<head><title>Logon Page</title></head>
	<body>
	
	[**Info**] :: ${requestScope.message} <br/><br/>

		<form  method="post" action="logonAction.do">
		
			 ��  ��  �� : <input type="text" name="userId" value="${! empty requestScope.user? user.userId : '���̵��Է�'}"><br/><br/>
			�н����� : <input type="text" name="password" value="${! empty requestScope.user? user.password : '�н������Է�'}"><br/><br/> 
			
			<%-- ��  ��  �� : <input type="text" name="userId" value="${userId}"><br/><br/>
			�н����� : <input type="text" name="password" value="${password}"><br/><br/> --%>
			
			<%-- ��  ��  �� : <input type="text" name="userId" value="<%= userId %>"><br/><br/>
			�н����� : <input type="text" name="password" value="<%= password %>"><br/><br/> --%>
			<input type="submit" name="submit" value="Enter"/>

		</form>

	</body>
</html>