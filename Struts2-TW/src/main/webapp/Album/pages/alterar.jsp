<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<h2>Alteração de álbum</h2>
<br />
<br />
<s:form action="AlterarAlbum">
	<s:hidden name="modelo.id" />
	<s:textfield label="Titulo do álbum" name="modelo.nome" />
	<s:textfield label="Ano de lançamento" name="modelo.ano" />
	<s:submit />
</s:form>