package com.society.application.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.society.application.model.DayBookModel;

public interface DayBookRepo extends JpaRepository<DayBookModel, Integer> {

	List<DayBookModel> findByselectBranch(String string);

	List<DayBookModel> findByselectLedger(String string);

	List<DayBookModel> findBydateBetween(String fDate, String tDate);

}
