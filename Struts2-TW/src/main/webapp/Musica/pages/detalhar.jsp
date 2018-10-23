<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<h2>Detalhes da música</h2>
<br/>
<br/>
<div class="row">
	<div class="col"><s:textfield label="Código da música" name="modelo.id" disabled="true" class="form-control form-control-sm"/></div>
	<div class="col"><s:textfield label="Titulo da música" name="modelo.nome" disabled="true" class="form-control form-control-sm"/></div>
</div><br/>
<a href="/TreinaWebStruts2/Musica/ListarMusicas" class="btn btn-primary">Voltar à lista de músicas</a>