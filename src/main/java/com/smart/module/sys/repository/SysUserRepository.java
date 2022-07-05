package com.smart.module.sys.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import  org.springframework.stereotype.Repository;
import com.smart.module.sys.entity.SysUser;

/**
 * sys_user Repository
*/ 
@Repository 
public interface SysUserRepository extends JpaRepository<SysUser, Long> {
}

