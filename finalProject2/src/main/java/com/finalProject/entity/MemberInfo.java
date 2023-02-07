package com.finalProject.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.finalProject.dto.MemberInfoDTO;
import lombok.Data;

@Entity
@Table(name="MOVIEMEMBER")
@Data
public class MemberInfo {
	
	private String id;
	private String name;
	private String pwd;
	private String email1;
	private String email2;
	private String email;
	private String roadFullAddr;
	private String birth_year;
	private String birth_month;
	private String birth_day;
	
	 public static MemberInfo createMember(MemberInfoDTO memberInfoDTO, PasswordEncoder passwordEncoder){
	        MemberInfo member = new MemberInfo();
	        member.setId(memberInfoDTO.getId());
	        member.setName(memberInfoDTO.getName());
	        member.setEmail(memberInfoDTO.getEmail1());
	        member.setEmail2(memberInfoDTO.getEmail2());
	        member.setEmail(memberInfoDTO.getEmail());
	        member.setRoadFullAddr(memberInfoDTO.getRoadFullAddr());
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
