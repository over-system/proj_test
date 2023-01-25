package com.spring.view.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HandlerMapping handlerMapping;
	private ViewResolver viewReolver;
 
    public DispatcherServlet() {

    }
    
    // Servlet이 servlet container에 올라갈 때 최초 한 번 실행되는 method
    @Override
    public void init() throws ServletException {
    	handlerMapping = new HandlerMapping();
    	viewReolver = new ViewResolver();
    	viewReolver.setPrefix("./");
    	viewReolver.setSuffix(".jsp");
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		process(request, response);
	}
	
	private void process(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 1. 클라이언트의 요청 path 정보를 추출
		String uri = request.getRequestURI();
		System.out.println(uri);
		String path = uri.substring(uri.lastIndexOf("/"));
		System.out.println(path);
		
		// 2. HandlerMapping을 통해 path에 해당하는 Controller 인스턴스 가져오기
		Controller ctrl = handlerMapping.getController(path);
		
		// 3. path를 통해 가져온 Controller를 실행
		String viewName = ctrl.handleRequest(request, response);
		
		// 4. ViewResolver를 통해 viewName에 해당하는 파일명 확정
		String view = null;
		if (!viewName.contains(".do")) {
			// view : ./getBoard.jsp
			view = viewReolver.getView(viewName);
		} else {
			view = viewName;
		}
		
		// 5. 검색한 화면으로 이동한다.
		response.sendRedirect(view);
/*		
		// 2. 클라이언트의 요청 path에 따라 적절히 분기 처리 수행
		if (path.equals("/login.do")) {
			System.out.println("로그인 처리");
		} else if (path.equals("/logout.do")) {
			System.out.println("로그아웃 처리");
		} else if (path.equals("/insertBoard.do")) {
			System.out.println("글 등록 처리");
		} else if (path.equals("/updateBoard.do")) {
			System.out.println("글 수정 처리");
		} else if (path.equals("/deleteBoard.do")) {
			System.out.println("글 삭제 처리");
		} else if (path.equals("/getBoard.do")) {
			System.out.println("글 상세 조회 처리");
		} else if (path.equals("/getBoardList.do")) {
			System.out.println("글 목록 검색 처리");
		}
		*/
	}
}
