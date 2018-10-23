<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<h2>Inserção de álbum</h2>
<br/><br/>
<s:form action="InserirAlbum">
	<s:textfield label="Titulo do álbum" name="modelo.nome" class="form-control form-control-sm"/>
	<s:textfield label="Ano de lançamento" name="modelo.ano" class="form-control form-control-sm"/>
	<s:submit class="btn btn-primary"/>
</s:form>