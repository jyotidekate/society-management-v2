package com.society.application.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.society.application.model.LoanPlanMaster;

public interface LoanPlanRepo extends JpaRepository<LoanPlanMaster, Integer> {

}
