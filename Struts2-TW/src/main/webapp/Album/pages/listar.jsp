<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<h2>Lista de álbuns</h2>
<br/>
<a class="btn btn-primary" href="/TreinaWebStruts2/Album/Inserir" role="button">Inserir álbum</a>
<br/><br/>
<s:if test="modelos.size() > 0">
	<table class="table table-bordered">
		<thead>
			<tr class="bg-primary">
				<th>Id</th>
				<th>Nome do álbum</th>
				<th>Ano do álbum</th>
				<th>Ações</th>
			</tr>
		</thead>
		<tbody>
			<s:iterator value="modelos">
				<tr>
					<s:url action="Alterar" var="urlAtualizar">
						<s:param name="id" value="id" />
					</s:url>
					<s:url action="Excluir" var="urlExcluir">
						<s:param name="id" value="id" />
					</s:url>
					<s:url action="Detalhar" var="urlDetalhar">
						<s:param name="id" value="id" />
					</s:url>
					<td><s:property value="id" /></td>
					<td><s:property value="nome" /></td>
					<td><s:property value="ano" /></td>
					<td><s:a href="%{urlAtualizar}">Atualizar</s:a> | <s:a
							href="%{urlExcluir}">Excluir</s:a> | <s:a href="%{urlDetalhar}">Detalhar</s:a>
					</td>
				</tr>
			</s:iterator>
		</tbody>
	</table>
</s:if>
<s:else>
	<i>Não existem álbuns cadastrados...</i>
</s:else>