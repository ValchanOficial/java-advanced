<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<h2>Inserção de música</h2>
<br />
<br />
<s:form action="InserirMusica">
	<s:textfield label="Titulo da música" name="modelo.nome" class="form-control form-control-sm"/>
	<s:select label="Álbum" headerKey="-1" headerValue="Selecione um álbum"
		list="albuns" name="albumId" listKey="id" listValue="nome" class="form-control form-control-sm"/>
	<s:submit class="btn btn-primary"/>
</s:form>