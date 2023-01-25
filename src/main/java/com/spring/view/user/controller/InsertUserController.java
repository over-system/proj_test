package com.spring.view.user.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.biz.user.UserVO;
import com.spring.biz.user.impl.UserDAO;
import com.spring.view.controller.Controller;


public class InsertUserController implements Controller {


    public InsertUserController() {
        
    }
    

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {

		// 1. 사용자 입력 정보 추출
//		request.setCharacterEncoding("utf-8");
		
		System.out.println("ID 등록 처리");
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		
		// 2. DB 연동
		UserVO vo = new UserVO();
		vo.setId(id);
		vo.setPassword(password);
		vo.setName(name);
		vo.setTel(tel);
		
		UserDAO userDAO = new UserDAO();
		userDAO.insertUser(vo);
		
		// 화면 navigation
		return "login2";
	}

}
