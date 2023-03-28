package com.jdc.tls;

import java.util.ListResourceBundle;

public class Message extends ListResourceBundle{

	@Override
	protected Object[][] getContents() {
		
		return new Object [][]{
			{"title","This is Internationalization"},
			{"message","I am a {1}"},
			{"body","I am a student of {1}"}
		};
	}

}
