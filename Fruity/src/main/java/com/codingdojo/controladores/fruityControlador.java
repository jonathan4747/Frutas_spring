package com.codingdojo.controladores;

import java.util.ArrayList;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.codingdojo.modelos.fruity;

@Controller
public class fruityControlador {
	public static ArrayList<fruity> listaFrutas = new ArrayList<fruity>();
	
	@RequestMapping( value = "/", method = RequestMethod.GET )
	 public String index(Model model) {
		
		listaFrutas.add(new fruity("Kiwi", 1.5));
		listaFrutas.add(new fruity("Mango", 2.0));
		listaFrutas.add(new fruity("Bayas de Goji", 4.0));
		listaFrutas.add(new fruity("Guayava", .75));
		
		model.addAttribute("listaFrutas",listaFrutas);
		return "index.jsp";
	}
	
}
