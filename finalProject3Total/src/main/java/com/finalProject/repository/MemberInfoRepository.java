package com.finalProject.repository;

import com.finalProject.dto.MemberDTO;
import com.finalProject.dto.MemberInfoDTO;
import com.finalProject.entity.MemberInfo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import java.util.List;
import org.springframework.security.core.userdetails.User;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.NoArgsConstructor;

public interface MemberInfoRepository extends JpaRepository<MemberInfo, Long> {
    
	// 일단 shop에서 따온대로 보류.
    MemberInfo findByEmail(String email);

	// long형의 longid추가하여 이 숫자로 아이디 구분해서 삭제하는 방법
	public void deleteById(long longId);

	MemberInfo findById(String id);
}