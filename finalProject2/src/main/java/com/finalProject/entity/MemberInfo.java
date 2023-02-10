package com.finalProject.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.Valid;
import javax.persistence.*;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.finalProject.dto.MemberInfoDTO;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Entity
@Table(name="MOVIEMEMBER")
@Getter
@Setter
@ToString
/*public class MemberInfo extends BaseEntity {*/
public class MemberInfo {
	@Id
	private String id;
	private String name;
	private String pwd;
	private String email1;
	private String email2;
	private String email;
	
    @Column(name="roadfulladdr")
	private String roadfulladdr;
    
	private String birth_year;
	private String birth_month;
	private String birth_day;
	
	// public static MemberInfo createMemberInfo(MemberInfoDTO memberInfoDTO, PasswordEncoder passwordEncoder)
	 public static MemberInfo createMemberInfo(MemberInfoDTO memberInfoDTO){
	        MemberInfo member = new MemberInfo();
	        member.setId(memberInfoDTO.getId());
	        member.setName(memberInfoDTO.getName());
	        member.setEmail(memberInfoDTO.getEmail1());
	        member.setEmail2(memberInfoDTO.getEmail2());
	        member.setEmail(memberInfoDTO.getEmail());
	        member.setRoadfulladdr(memberInfoDTO.getRoadfulladdr());
	        member.setBirth_year(memberInfoDTO.getBirth_year());
	        member.setBirth_month(memberInfoDTO.getBirth_month());
	        member.setBirth_day(memberInfoDTO.getBirth_day());
	        // 패스워드 인코딩 작업, 해싱하는 작업, 패스워드 일반 평문으로 특정 길이의 문자열로 변환하는 작업.
	        // String pwd = passwordEncoder.encode(memberInfoDTO.getPwd());
	        member.setPwd(memberInfoDTO.getPwd());
	        // 회원 가입시 기본 역할 지정 부분.
	        return member;
	    }
	 
//	    // MemberInfoDTO에 들어있는 정보를 MemberInfo으로 재할당하는 메서드
//	    public void updateMemberInfo(String id, String name, String pwd, String email1, String email2, String email, String roadfulladdr, String birth_year, String birth_month, String birth_day){
//	        this.id = id;
//	        this.name = name;
//	        this.pwd = pwd;
//	        this.email1 = email1;
//	        this.email2 = email2;
//	        this.email = email;
//	        this.roadfulladdr = roadfulladdr;
//	        this.birth_year = birth_year;
//	        this.birth_month = birth_month;
//	        this.birth_day = birth_day;
//	    }

		public static MemberInfo updateMemberInfo(MemberInfoDTO memberInfoDTO) {
	        MemberInfo member = new MemberInfo();
	        member.setId(memberInfoDTO.getId());
	        member.setName(memberInfoDTO.getName());
	        member.setEmail1(memberInfoDTO.getEmail1());
	        member.setEmail2(memberInfoDTO.getEmail2());
	        member.setEmail(memberInfoDTO.getEmail());
	        member.setRoadfulladdr(memberInfoDTO.getRoadfulladdr());
	        member.setBirth_year(memberInfoDTO.getBirth_year());
	        member.setBirth_month(memberInfoDTO.getBirth_month());
	        member.setBirth_day(memberInfoDTO.getBirth_day());
	        // 패스워드 인코딩 작업, 해싱하는 작업, 패스워드 일반 평문으로 특정 길이의 문자열로 변환하는 작업.
	        // String pwd = passwordEncoder.encode(memberInfoDTO.getPwd());
	        member.setPwd(memberInfoDTO.getPwd());
	        // 회원 가입시 기본 역할 지정 부분.
	        return member;
		}

		
//	    // OrderSevice에서 호출해서 왔음.
//	    // 주문의 상태를 ORDER -> CANCEL 로 상태 변경
//	    // 상품의 재고 수량을 원래대로 복구
//	    public void deleteMemberInfo(String id, String name, String pwd, String email1, String email2, String email, String roadfulladdr, String birth_year, String birth_month, String birth_day) {
//	    	
//	    	this.name = name;
//	        this.pwd = pwd;
//	        this.email1 = email1;
//	        this.email2 = email2;
//	        this.email = email;
//	        this.roadfulladdr = roadfulladdr;
//	        this.birth_year = birth_year;
//	        this.birth_month = birth_month;
//	        this.birth_day = birth_day;
//	    	
//	        // 주문 안에 있는 주문상품 각각에 cancel 메소드를 불러와 캔술된 수량만큼 addStock시킴
//	        MemberInfo memberInfo.cancel();
//	        }
//	    }
}
