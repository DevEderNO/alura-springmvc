package br.com.casadocodigo.loja.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/carrinho")
public class CarrinhoCompraController {
	
//	private static final String PRODUTOS = "produtos";
//	private static final String BARRA = "/";
//	private static final String REDIRECT = "redirect:";

//	@RequestMapping("/add")
//	public ModelAndView add(Produto produto, TipoPreco tipoPreco){
//		ModelAndView modelAndView = new ModelAndView(REDIRECT + BARRA + PRODUTOS);
//		CarrinhoItem carrinhoItem = criaItem(produto, tipoPreco);
//		
//		return modelAndView;
//	}
//
//	private CarrinhoItem criaItem(Produto produto, TipoPreco tipoPreco) {
//		produtoDAO.find(produto.getId());
//		
//		return carrinhoItem;
//	}
}
