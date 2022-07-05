package com.smart.module.sys.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import  org.springframework.stereotype.Repository;
import com.smart.module.sys.entity.SysRoleOrg;

/**
 * sys_role_org Repository
*/ 
@Repository 
public interface SysRoleOrgRepository extends JpaRepository<SysRoleOrg, Long> {
}

