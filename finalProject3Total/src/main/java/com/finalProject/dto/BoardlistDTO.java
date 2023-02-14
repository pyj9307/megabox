package com.finalProject.dto;

import lombok.Data;

@Data
public class BoardlistDTO {
	
	private int id;

	private String name;
	private String passwd;
	private String title;
	private String content;
	private String regdate;
	private String readcount;
	private String regreplydate;
	
	private String replystep;
	private String replylevel;
	


}
