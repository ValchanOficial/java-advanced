<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<h2>Alteração de música</h2>
<br />
<br />
<s:form action="AlterarMusica">
	<s:hidden name="modelo.id" />
	<s:textfield label="Titulo da música" name="modelo.nome" />
	<s:select label="Álbum" headerKey="-1" headerValue="Selecione um álbum"
		list="albuns" name="albumId" listKey="id" listValue="nome" />
	<s:submit />
</s:form>