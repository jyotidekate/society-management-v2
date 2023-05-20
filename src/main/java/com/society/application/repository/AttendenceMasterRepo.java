package com.society.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.AttendenceMaster;

@Repository
public interface AttendenceMasterRepo extends JpaRepository<AttendenceMaster, Integer>{

}
