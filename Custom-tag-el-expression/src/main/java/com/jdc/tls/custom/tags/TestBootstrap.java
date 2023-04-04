package com.jdc.tls.custom.tags;

import java.io.IOException;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.tagext.TagSupport;

public class TestBootstrap extends TagSupport{

	private static final long serialVersionUID = 1L;
	
	private final String forBoot = """
			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
			""";
	
	@Override
	public int doStartTag() throws JspException {
		
		try {
			pageContext.getOut().append(forBoot);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return super.doStartTag();
	}

}
