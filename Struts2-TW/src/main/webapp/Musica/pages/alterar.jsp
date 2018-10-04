<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>Alteração de álbum</title>
	</head>
	<body>
		<h2>Alteração de álbum</h2>
		<br/><br/>
		<s:form action="AlterarAlbum">
			<s:hidden name="modelo.id"/>
			<s:textfield label="Titulo do álbum" name="modelo.nome"/>
			<s:textfield label="Ano de lançamento" name="modelo.ano"/>
			<s:submit/>
		</s:form>
	</body>
</html>