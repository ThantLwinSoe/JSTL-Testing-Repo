package com.jdc.tls.custom.tags;

import java.io.IOException;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.tagext.TagSupport;

public class TestFormAttribute extends TagSupport {

	private static final long serialVersionUID = 1L;

	private String label;
	private String name;
	private String placeholder;
	
	private final String formDesign = """
			<div>
				<label class="form-label">%s</label>
				<input type="text" name="%s" placeholder="%s" class="form-control" />
			</div>
			""";
	
	
	@Override
	public int doStartTag() throws JspException {
		
		try {
			pageContext.getOut().append(formDesign.formatted(label,name,placeholder));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return super.doStartTag();
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setPlaceholder(String placeholder) {
		this.placeholder = placeholder;
	}

}
