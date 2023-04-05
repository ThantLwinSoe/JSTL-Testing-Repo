package com.jdc.tls.load;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/load")
public class LoadingData extends HttpServlet{

	private static final long serialVersionUID = 1L;
/*	
	private List<String> course;
	
	public LoadingData() {
		this.course = List.of("Java Basic", "AWS", "Linux Fundamental", "Spring", "Angular", "Flutter","React");
	} 
*/	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setAttribute("courses", List.of("Java Basic", "AWS", "Linux Fundamental", "Spring", "Angular", "Flutter","React"));
		getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);
	}

}
