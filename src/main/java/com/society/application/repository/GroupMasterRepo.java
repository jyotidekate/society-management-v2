package com.society.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.society.application.model.GroupMaster;

@Repository
public interface GroupMasterRepo extends JpaRepository<GroupMaster, Integer> {

	@Query("SELECT COUNT(u) FROM GroupMaster u")
	long countGroupMaster();

}
