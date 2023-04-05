package com.jdc.tls.custom.tags;

import java.io.IOException;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.tagext.TagSupport;

public class CustomBootstrap extends TagSupport{

	private static final long serialVersionUID = 1L;
	
	private final String boot = """
			<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"/>
			""";
	
	@Override
	public int doStartTag() throws JspException {
		try {
			pageContext.getOut().append(boot);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return super.doStartTag();
	}

}
