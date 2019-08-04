<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<tags:pageTemplate titulo="Casa do Código">
	<main class="infoSection container mt-3">
		<h2 class="font-graduate text-center">Carrinho</h2>
			<table class="table table-striped table-bordered">
				<thead>
					<tr>
						<th></th>
						<th class="formularioDoCarrinho-cabecalho-item">Item</th>
						<th class="formularioDoCarrinho-cabecalho-item formularioDoCarrinho-cabecalho-preco">Preço</th>
						<th class="formularioDoCarrinho-cabecalho-item">Qtd</th>
						<th class="formularioDoCarrinho-cabecalho-item">Total</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${carrinhoCompras.itens }" var="item">
						<tr>
							<td align="center">
								<img class="img image-fluid" src="//cdn.shopify.com/s/files/1/0155/7645/products/bhaqv_w_K03vnwWTS9CjbLLnOI9Ifdq9TbEYpEowN30_small.jpg?v=1526668094" />
							</td>
							<td class="">
								<h2>${item.produto.titulo }</h2>
							</td>
							<td class="formularioDoCarrinho-item formularioDoCarrinho-item-preco">${item.preco }</td>
							<td class="form-group">
								<input class="form-control" type="number" min="0" id="quantidade" name="quantidade" value="${carrinhoCompras.getQuantidade(item) }">
							</td>
							<td class="formularioDoCarrinho-item formularioDoCarrinho-item-precoTotal" title="PreÃ§o unitÃ¡rio: R$59,90">${carrinhoCompras.getTotal(item) }</td>
							<td>
								<form:form action="${s:mvcUrl('CCC#remover').arg(0,item.produto.id).arg(1,item.tipoPreco).build() }" method="post">
									<input 	type="image"
											class="img"  
											src="http:////cdn.shopify.com/s/files/1/0155/7645/t/232/assets/trash.png?104" alt="X" title="Remover">
								</form:form>
							</td>
						</tr>
					</c:forEach>
					
				</tbody>
				<tfoot class="formularioDoCarrinho-rodape">
					<tr>
						<td class="formularioDoCarrinho-rodape-item formularioDoCarrinho-finalizar" colspan="4">
							<form:form action="${s:mvcUrl('PC#finalizar').build() }" method="post">
								<input class="btn btn-primary" type="submit" value="Finalizar Compra"></input>
							</form:form>
						</td>
						<td class="formularioDoCarrinho-rodape-item">
							${carrinhoCompras.total }
						</td>
						<td></td>
					</tr>
				</tfoot>
			</table>
	</main>
</tags:pageTemplate>