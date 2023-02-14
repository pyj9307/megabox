package com.finalProject.service;

import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.persistence.EntityNotFoundException;
import javax.transaction.Transactional;

import org.apache.catalina.security.SecurityUtil;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.multipart.MultipartFile;

import com.finalProject.dto.MemberInfoDTO;
import com.finalProject.entity.MemberInfo;
import com.finalProject.repository.MemberInfoRepository;

import lombok.RequiredArgsConstructor;


@Service
//@Transactional 클래스안에 메서드들 중 한개라도 작동이 안되면 전체 메서드를 롤백한다.
//보통 서비스 할 때 Transactional을 씀
@Transactional
//@RequiredArgsConstructor : not null, final이 붙은 멤버도 생성자로 생성해달라. 롬복 라이브러리에 있는 에너테이션
@RequiredArgsConstructor
public class MemberInfoService implements UserDetailsService {
	
    private final MemberInfoRepository memberInfoRepository;
    
    public MemberInfo saveMemberInfo(MemberInfo memberInfo){
    	//validateDuplicateMember 일단 뺌
    	//validateDuplicateMember(memberInfo);
        return memberInfoRepository.save(memberInfo);
    }
    
	// 회원정보 삭제(수정 완료)
	public void deleteMemberInfo(long longid) throws Exception {
	    	// 삭제 시 요청한 장바구니_상품 아이디로 검색해서, 디비에 있는지 조회
			// 엔티티에 long형의 longid추가하여 이 숫자로 아이디 구분해서 삭제하는 방법
	        MemberInfo memberInfo = memberInfoRepository.findById(longid)
	        		.orElseThrow(EntityNotFoundException::new);
	        // 실제 삭제 로직. (delete) 기본으로 제공하는 로직
	        memberInfoRepository.delete(memberInfo);
	    }
    
    private void validateDuplicateMember(MemberInfo memberInfo){
    	MemberInfo findMemberInfo = memberInfoRepository.findByEmail(memberInfo.getEmail());
        if(findMemberInfo != null){
            throw new IllegalStateException("이미 가입된 회원입니다.");
        }
    }
    
    // 회원정보 수정(수정 중)
    public Long updateMemberInfo(long longid, MemberInfoDTO memberInfoDTO) throws Exception{

    	MemberInfo memberInfo = memberInfoRepository.findById(longid)
                .orElseThrow(EntityNotFoundException::new);
		memberInfo.updateMemberInfo(memberInfoDTO);
		
		return memberInfo.getLongid();
    }
    
	public UserDetails loadUserByUsername(String Id) throws UsernameNotFoundException {
        
		MemberInfo member = memberInfoRepository.findById(Id);

        if(member == null){
            throw new UsernameNotFoundException(Id);
        }

        return User.builder()
                .username(member.getEmail())
                .password(member.getPwd())
                .build();
    }
}
