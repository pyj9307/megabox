package com.finalProject.entity;

import java.util.Date;

import java.util.List;

import javax.persistence.CascadeType;

import javax.persistence.Column;

import javax.persistence.Entity;

import javax.persistence.FetchType;

import javax.persistence.GeneratedValue;

import javax.persistence.GenerationType;

import javax.persistence.Id;

import javax.persistence.PostPersist;

import javax.persistence.PrePersist;

import javax.persistence.SequenceGenerator;

import javax.persistence.Temporal;

import javax.persistence.TemporalType;

import lombok.Getter;

import lombok.Setter;

@Entity

@Getter

@Setter

// 시퀀스의 시작값은 1

// 시퀀스의 기본 allocationSize는50, 번호가 50부터 생기므로 1로

@SequenceGenerator(name = "BOARDLIST_SEQ_GENERATOR",
// 시퀸스란? 유일(UNIQUE)한 값을 생성해주는 오라클 객체이다.
		sequenceName = "BOARDLIST_SEQ",

		initialValue = 1,

		allocationSize = 1)

public class Boardlist {
	 //  BOARDlist 테이블의 ID 칼럼이 시퀀스를 이용하여 DB쪽에서 값이 자동생성 된다.
	@Id

	@GeneratedValue(strategy = GenerationType.SEQUENCE,

			generator = "BOARDLIST_SEQ_GENERATOR")

	@Column(length = 10)

	protected Integer id;

	@Column(length = 20, nullable = false)

	protected String name;

	@Column(length = 20, nullable = false)

	protected String passwd;

	@Column(length = 500, nullable = false)

	protected String title;

	@Column(length = 4000, nullable = false)

	protected String content;

	// 날짜기본형식 time, day, month, year 형태저장

	@Column(nullable = false, columnDefinition = "date default sysdate")

	@Temporal(TemporalType.TIMESTAMP)

	protected Date regdate = new Date();

	@Column(nullable = false, columnDefinition = "number(5) default 0")
    // 디폴트값으로 0지정
	protected Integer readcount = 0;

	
	@Column(nullable = false, columnDefinition = "number(5)")

	protected Integer reply = 0;
    // 리스트보기에서 정렬시 우선적으로 reply로 정렬


	@Column(nullable = false, columnDefinition = "number(5) default 0")

	protected Integer replystep = 0;
	// 글아래에 대해 reply_level과 관계없이 1씩 증가
	
	@Column(nullable = false, columnDefinition = "number(5) default 0", length = 10)

	protected Integer replylevel = 0;

	@PostPersist

	public void onCreate() {

		reply = id;
  // reply 칼럼의 기본값을 id로 설정하는 것이 @Column으로는 불가능 하여 
 // @PostPersist 어노테이션을 사용하여 영속성 컨텍스트에 적재된 후 id 값을 reply에 대입해주면 된다.
		 


	}

}
