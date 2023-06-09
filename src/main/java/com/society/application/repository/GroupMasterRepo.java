package com.society.application.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.society.application.model.GroupMaster;

@Repository
public interface GroupMasterRepo extends JpaRepository<GroupMaster, Integer> {

	@Query("SELECT COUNT(u) FROM GroupMaster u")
	long countGroupMaster();

	List<GroupMaster> findByflag(String flag);

	@Modifying
	@Transactional
	@Query("UPDATE GroupMaster SET flag =:flag WHERE id=:id")
	int updateThroughIDInDeleteGoldtRectification(@Param("flag") String flag,@Param("id") int id);

	List<GroupMaster> findByid(Integer id);
	
}
