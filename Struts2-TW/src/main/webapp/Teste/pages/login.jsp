<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>Login</title>
	</head>
	<body>
		<h1>Bem-vindo ao teste do Struts2</h1>
		<s:form action="Login">
			<s:textfield name="email" label="Nome de usuário: "/>
			<s:password name="senha" label="Senha: "></s:password>
			<s:submit/>
		</s:form>
	</body>
</html>