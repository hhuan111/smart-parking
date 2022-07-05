package com.smart.module.sys.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import  org.springframework.stereotype.Repository;
import com.smart.module.sys.entity.SysMenu;

/**
 * sys_menu Repository
*/ 
@Repository 
public interface SysMenuRepository extends JpaRepository<SysMenu, Long> {

    /**
     * 根据id查询菜单，编辑的时候会用
     * @param id
     * @return
     */
    @Query("select m from SysMenu m where m.menuId =: id")
    public SysMenu find(@Param("id")Long id);
}

