package com.society.application.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.society.application.model.LoanMaster;

@Repository
public interface LoanMasterRepo  extends JpaRepository<LoanMaster, Integer>{

	List<LoanMaster> findByflag(String flag);

	@Modifying
	@Transactional
	@Query("UPDATE LoanMaster SET flag =:flag WHERE id =:id")
	public int updateThroughIdInDeleteLoanApplication(@Param("flag") String flag, @Param("id") int id);

	public List<LoanMaster> findByid(Integer id);

}
