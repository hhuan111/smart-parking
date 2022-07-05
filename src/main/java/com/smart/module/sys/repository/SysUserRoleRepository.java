package com.smart.module.sys.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import  org.springframework.stereotype.Repository;
import com.smart.module.sys.entity.SysUserRole;

/**
 * sys_user_role Repository
*/ 
@Repository 
public interface SysUserRoleRepository extends JpaRepository<SysUserRole, Long> {
}

