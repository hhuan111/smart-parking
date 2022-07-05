package com.smart.module.sys.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import  org.springframework.stereotype.Repository;
import com.smart.module.sys.entity.SysRoleMenu;

/**
 * sys_role_menu Repository
*/ 
@Repository 
public interface SysRoleMenuRepository extends JpaRepository<SysRoleMenu, Long> {
}

