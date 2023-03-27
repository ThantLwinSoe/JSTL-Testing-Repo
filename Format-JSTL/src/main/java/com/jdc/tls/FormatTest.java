package com.jdc.tls;

import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Date;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = "/format")
public class FormatTest extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		var number = 1289099.1234;
		var localDate = LocalDate.now();
		var localDateTime = LocalDateTime.now();
		
		req.setAttribute("number", number);
		req.setAttribute("floatNumber", 0.008934);
		req.setAttribute("currency", 150000);
		req.setAttribute("Pattern", 60.0009);
		
		req.setAttribute("Date", new Date());
		req.setAttribute("localDate", localDate);
		req.setAttribute("localDateTime", localDateTime);
		
		getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);
	}

}
