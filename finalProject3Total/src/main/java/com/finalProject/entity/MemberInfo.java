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
	@GeneratedValue(strategy = GenerationType.AUTO)
	// long형의 longid추가
	private long longid;
	private String id;
	private String name;
	private String pwd;
	private String email1;
	private String email2;
	private String email;
	
    @Column(name="roadfulladdr")
	private String roadFullAddr;
    
	private String birth_year;
	private String birth_month;
	private String birth_day;
	
	 public static MemberInfo createMemberInfo(MemberInfoDTO memberInfoDTO){
	        MemberInfo member = new MemberInfo();
	        member.setId(memberInfoDTO.getId());
	        member.setName(memberInfoDTO.getName());
	        member.setEmail1(memberInfoDTO.getEmail1());
	        member.setEmail2(memberInfoDTO.getEmail2());
	        member.setEmail(memberInfoDTO.getEmail());
	        member.setRoadFullAddr(memberInfoDTO.getRoadFullAddr());
	        member.setBirth_year(memberInfoDTO.getBirth_year());
	        member.setBirth_month(memberInfoDTO.getBirth_month());
	        member.setBirth_day(memberInfoDTO.getBirth_day());
	        member.setPwd(memberInfoDTO.getPwd());
	        return member;
	    }

		public void updateMemberInfo(MemberInfoDTO memberInfoDTO) {
	        this.id = memberInfoDTO.getId();
	        this.name = memberInfoDTO.getName();
	        this.email1 = memberInfoDTO.getEmail1();
	        this.email2 = memberInfoDTO.getEmail2();
	        this.email = memberInfoDTO.getEmail();
	        this.roadFullAddr = memberInfoDTO.getRoadFullAddr();
	        this.birth_year = memberInfoDTO.getBirth_year();
	        this.birth_month = memberInfoDTO.getBirth_month();
	        this.birth_day = memberInfoDTO.getBirth_day();
		}
}
