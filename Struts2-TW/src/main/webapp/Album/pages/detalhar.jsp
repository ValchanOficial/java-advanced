<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<h2>Detalhes de álbum</h2>
<br />
<br />
<s:textfield label="Código do álbum" name="modelo.id" disabled="true" />
<s:textfield label="Titulo do álbum" name="modelo.nome" disabled="true" />
<s:textfield label="Ano de lançamento" name="modelo.ano" disabled="true" />
<br />
<a href="/TreinaWebStruts2/Album/ListarAlbuns">Voltar à lista de álbuns</a>