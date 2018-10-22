<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<h2>Detalhes da música</h2>
<br />
<br />
<s:textfield label="Código da música" name="modelo.id" disabled="true" />
<s:textfield label="Titulo da música" name="modelo.nome" disabled="true" />
<br />
<a href="/TreinaWebStruts2/Musica/ListarMusicas">Voltar à lista de músicas</a>