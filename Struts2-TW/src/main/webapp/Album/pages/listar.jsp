<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title>Lista de álbuns</title>
	</head>
	<body>
		<h2>Lista de álbuns</h2>
		<br/>
		<s:if test="modelos.size() > 0">
			<table style="border: 1px">
				<thead>
					<tr>
						<td>Id do álbum</td>
						<td>Nome do álbum</td>
						<td>Ano do álbum</td>
					</tr>
				</thead>
				<tbody>
					<s:iterator value="modelos">
						<tr>
							<td><s:property value="id" /></td>
							<td><s:property value="nome" /></td>
							<td><s:property value="ano" /></td>
						</tr>
					</s:iterator>
				</tbody>
			</table>
		</s:if>
		<s:else>
			<i>Não existem álbuns cadastrados...</i>
		</s:else>
	</body>
</html>