package br.com.caelum.tarefas.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.caelum.tarefas.dao.UsuarioDAO;
import br.com.caelum.tarefas.modelo.Usuario;

@Controller
public class LoginController {
	
	@RequestMapping("loginForm")
	public String loginForm() {
		return "formulario-login";
	}
	
	@RequestMapping("efetuarLogin")
	public String efetuarLogin(Usuario usuario, HttpSession session) {
		if (new UsuarioDAO().existeUsuario(usuario)) {
			session.setAttribute("usuarioLogado", usuario);
			return "menu";
		}
		return "redirect:loginForm";
	}
}
