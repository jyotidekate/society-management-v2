package com.society.application.repository;


import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.society.application.model.BranchMaster;

@Repository
public interface BranchMasterRepo extends JpaRepository<BranchMaster, Integer>{
	
	BranchMaster findByname(String name);
	
	@Query(value="select * from branch_master order by id limit 5",nativeQuery = true)
	List<BranchMaster> getlastFiveRecords();
	
	@Modifying
	@Transactional
	@Query(value = "UPDATE BranchMaster SET amount =:string,opening_date =:string2 WHERE name BETWEEN :string3 AND :string4 ")
	void findByfromBranchToBranch(@Param("string") String string,@Param("string2") String string2,@Param("string3") String string3,@Param("string4") String string4);
	
	public List<BranchMaster> findByid(int i);
}
