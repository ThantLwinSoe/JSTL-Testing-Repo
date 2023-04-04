package com.jdc.tls.custom.tags;

import java.io.IOException;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.tagext.TagSupport;

public class TestCustomTag extends TagSupport{

	private static final long serialVersionUID = 1L;
	
	@Override
	public int doStartTag() throws JspException {
		
		try {
			pageContext.getOut().append("Custom Tags is Here!!!");
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return SKIP_BODY;
	}

}
