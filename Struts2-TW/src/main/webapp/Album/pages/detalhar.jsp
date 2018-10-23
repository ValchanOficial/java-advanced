<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<h2>Detalhes de álbum</h2>
<br/>
<br/>
<div class="row">
	<div class="col"><s:textfield label="Código do álbum" name="modelo.id" disabled="true" class="form-control form-control-sm"/></div>
	<div class="col"><s:textfield label="Titulo do álbum" name="modelo.nome" disabled="true" class="form-control form-control-sm"/></div>
	<div class="col"><s:textfield label="Ano de lançamento" name="modelo.ano" disabled="true" class="form-control form-control-sm"/></div>
</div><br/>
<a href="/TreinaWebStruts2/Album/ListarAlbuns" class="btn btn-primary">Voltar à lista de álbuns</a>