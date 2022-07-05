package com.smart.module.sys.repository;

import com.smart.module.sys.entity.SysLandingRecords;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * sys_landing_records Repository
*/ 
@Repository 
public interface SysLandingRecordsRepository extends JpaRepository<SysLandingRecords, Long> {
}

