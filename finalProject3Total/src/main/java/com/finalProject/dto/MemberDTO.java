package com.finalProject.dto;

import lombok.Data;


// lombok을 사용하여 getter/setter 생략
@Data
public class MemberDTO {

	// long형의 longid추가
	private long longid;
	private String id;
	private String name;
	private String pwd;
	private String email1;
	private String email2;
	private String email;
	private String roadfulladdr;
	private String birth_year;
	private String birth_month;
	private String birth_day;
	
}
