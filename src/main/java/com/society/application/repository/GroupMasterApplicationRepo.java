package com.society.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.society.application.model.GroupMasterApplication;
@Repository
public interface GroupMasterApplicationRepo extends JpaRepository<GroupMasterApplication, Integer>{

}
