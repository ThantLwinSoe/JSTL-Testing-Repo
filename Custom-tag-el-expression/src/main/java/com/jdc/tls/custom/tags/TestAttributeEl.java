package com.jdc.tls.custom.tags;

import java.io.IOException;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.tagext.TagSupport;

public class TestAttributeEl extends TagSupport{

	private static final long serialVersionUID = 1L;
	
	private String subTitle;
	
	public void setSubTitle(String subTitle) {
		this.subTitle = subTitle;
	}
	
	@Override
	public int doStartTag() throws JspException {
		try {
			pageContext.getOut().append(subTitle);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return super.doStartTag();
	}

}
