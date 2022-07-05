package com.smart.module.sys.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import  org.springframework.stereotype.Repository;
import com.smart.module.sys.entity.SysRole;

/**
 * sys_role Repository
*/ 
@Repository 
public interface SysRoleRepository extends JpaRepository<SysRole, Long> {
}

