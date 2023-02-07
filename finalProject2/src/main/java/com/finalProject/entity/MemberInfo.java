package com.finalProject.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.finalProject.dto.MemberInfoDTO;
import lombok.Data;

@Entity
@Table(name="MOVIEMEMBER")
@Data
public class MemberInfo {
	@Id
	private String id;
	private String name;
	private String pwd;
	private String email1;
	private String email2;
	private String email;
    // @Column(name="roadfulladdr")
//	private String roadfulladdr;
	private String birth_year;
	private String birth_month;
	private String birth_day;
	
	 public static MemberInfo createMemberInfo(MemberInfoDTO memberInfoDTO, PasswordEncoder passwordEncoder){
	        MemberInfo member = new MemberInfo();
	        member.setId(memberInfoDTO.getId());
	        member.setName(memberInfoDTO.getName());
	        member.setEmail(memberInfoDTO.getEmail1());
	        member.setEmail2(memberInfoDTO.getEmail2());
	        member.setEmail(memberInfoDTO.getEmail());
//	        member.setRoadfulladdr(memberInfoDTO.getRoadfulladdr());
	        member.setBirth_year(memberInfoDTO.getBirth_year());
	        member.setBirth_month(memberInfoDTO.getBirth_month());
	        member.setBirth_day(memberInfoDTO.getBirth_day());
	        // 패스워드 인코딩 작업, 해싱하는 작업, 패스워드 일반 평문으로 특정 길이의 문자열로 변환하는 작업.
	        String pwd = passwordEncoder.encode(memberInfoDTO.getPwd());
	        member.setPwd(pwd);
	        // 회원 가입시 기본 역할 지정 부분.
	        return member;
	    }
}
