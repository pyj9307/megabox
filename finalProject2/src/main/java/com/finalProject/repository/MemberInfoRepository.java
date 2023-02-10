package com.finalProject.repository;

import com.finalProject.dto.MemberDTO;
import com.finalProject.dto.MemberInfoDTO;
import com.finalProject.entity.MemberInfo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.security.core.userdetails.User;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.NoArgsConstructor;

public interface MemberInfoRepository extends JpaRepository<MemberInfo, Long> {
	// 일단 shop에서 따온대로 보류.
    MemberInfo findByEmail(String email);

    MemberInfo findById(String id);

	MemberInfo save(User user);

	Object deleteById(String id);

}