package com.smart.module.sys.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import  org.springframework.stereotype.Repository;
import com.smart.module.sys.entity.SysOrg;

/**
 * sys_org Repository
*/ 
@Repository 
public interface SysOrgRepository extends JpaRepository<SysOrg, Long> {
}

