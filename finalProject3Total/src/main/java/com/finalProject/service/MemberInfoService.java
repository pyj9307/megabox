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

	// 회원정보 저장
    public MemberInfo saveMemberInfo(MemberInfo memberInfo){
    	// Repository에서 지원하는 기능인 save메서드를 사용해 디비에 저장
        return memberInfoRepository.save(memberInfo);
    }
    
	// 회원정보 삭제
	public void deleteMemberInfo(long longid) throws Exception {
			// 엔티티에 long형의 longid 숫자로 아이디 구분해서 삭제하는 방법
	        MemberInfo memberInfo = memberInfoRepository.findById(longid)
	        		.orElseThrow(EntityNotFoundException::new);
	    	// Repository에서 지원하는 기능인 delete메서드를 사용해 디비에 삭제
	        memberInfoRepository.delete(memberInfo);
	    }

    // 회원정보 수정
    public Long updateMemberInfo(long longid, MemberInfoDTO memberInfoDTO) throws Exception{
		// 엔티티에 long형의 longid 숫자로 아이디 구분해서 업데이트하는 방법
    	MemberInfo memberInfo = memberInfoRepository.findById(longid)
                .orElseThrow(EntityNotFoundException::new);
		memberInfo.updateMemberInfo(memberInfoDTO);
		return memberInfo.getLongid();
    }
    
    private void validateDuplicateMember(MemberInfo memberInfo){
    	MemberInfo findMemberInfo = memberInfoRepository.findByEmail(memberInfo.getEmail());
        if(findMemberInfo != null){
            throw new IllegalStateException("이미 가입된 회원입니다.");
        }
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
