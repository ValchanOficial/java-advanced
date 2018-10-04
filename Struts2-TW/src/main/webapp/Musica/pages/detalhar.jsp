<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>Detalhes de álbum</title>
	</head>
	<body>
		<h2>Detalhes de álbum</h2>
		<br/><br/>
			<s:textfield label="Código do álbum" name="modelo.id" disabled="true"/>
			<s:textfield label="Titulo do álbum" name="modelo.nome" disabled="true"/>
			<s:textfield label="Ano de lançamento" name="modelo.ano" disabled="true"/>
			<br/>
			<a href="/TreinaWebStruts2/Album/ListarAlbuns">Voltar à lista de álbuns</a>
	</body>
</html>