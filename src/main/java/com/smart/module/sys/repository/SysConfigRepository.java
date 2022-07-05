package com.smart.module.sys.repository;

import com.smart.module.sys.entity.SysConfig;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * sys_user Repository
*/ 
@Repository 
public interface SysConfigRepository extends JpaRepository<SysConfig, Long> {

}

