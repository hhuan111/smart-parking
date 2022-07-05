package com.smart.module.sys.repository;

import com.smart.module.sys.entity.SysInterface;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * sys_interface Repository
*/ 
@Repository 
public interface SysInterfaceRepository extends JpaRepository<SysInterface, Long> {

    SysInterface getByType(String type);

}

