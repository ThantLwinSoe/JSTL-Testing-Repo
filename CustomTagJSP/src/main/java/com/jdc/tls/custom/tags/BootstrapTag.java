package com.jdc.tls.custom.tags;

import java.io.IOException;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.tagext.TagSupport;

public class BootstrapTag extends TagSupport{

	private static final long serialVersionUID = 1L;
	
	private final String NAME = """
			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" >
			"""; 
	
	@Override
	public int doAfterBody() throws JspException {
			
		try {
			pageContext.getOut().append(NAME);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return SKIP_BODY;
	}

}
