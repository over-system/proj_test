package com.spring.view.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.spring.view.controller.Controller;

public class LogoutController implements Controller {
	private static final long serialVersionUID = 1L;

    public LogoutController() {
        
    }

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("로그 아웃 처리");
		
		// 1. Web Browser와 연결된 session객체를 강제로 종료
		HttpSession session = request.getSession();
		session.invalidate();

		// 2. Session 종료 후 login 화면으로 이동
		return "login2";
	}

}
