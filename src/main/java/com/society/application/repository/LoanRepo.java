package com.society.application.repository;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.society.application.model.Loan;

@Repository
public interface LoanRepo extends JpaRepository<Loan, Integer> {
	@Query("SELECT COUNT(u) FROM Loan u")
	long countLoan();

	List<Loan> findBymemberData(String string);

	

	List<Loan> findByloanPlanName(String loanPlanName);
}
