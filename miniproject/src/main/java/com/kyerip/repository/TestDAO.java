package com.kyerip.repository;

import java.sql.Date;

import org.springframework.stereotype.Repository;

@Repository
public interface TestDAO {

	String getVersion();

	Date selectSysdate();

}
