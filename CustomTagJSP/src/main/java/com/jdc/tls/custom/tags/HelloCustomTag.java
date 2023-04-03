package com.jdc.tls.custom.tags;

import java.io.IOException;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.tagext.TagSupport;

public class HelloCustomTag extends TagSupport{

	private static final long serialVersionUID = 1L;
	
	@Override
	public int doStartTag() throws JspException {
		
		try {
			pageContext.getOut().append("This is Custom Tag from Java Class");
		} catch (IOException e) {
			
			e.printStackTrace();
		}
		
		return SKIP_BODY;
	}

}
