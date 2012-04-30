package br.com.caelum.tarefas.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AutorizadorInterceptor extends HandlerInterceptorAdapter {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		String uri = request.getRequestURI();
		if (uri.endsWith("loginForm") || uri.endsWith("efetuarLogin")){
			return true;
		}
		
		if (request.getSession().getAttribute("usuarioLogado") != null){
			return true;
		}
		//redireciona para o lofinForm //testando do pull
		response.sendRedirect("loginForm");
		return super.preHandle(request, response, handler);
	}
}
