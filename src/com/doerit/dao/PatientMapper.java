package com.doerit.dao;

import com.doerit.model.Patient;
import com.doerit.model.PatientExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;

public interface PatientMapper {
  
    int countByExample(PatientExample example);
    int deleteByExample(PatientExample example);
    int deleteByPrimaryKey(String id);
    int insert(Patient record);
    int insertSelective(Patient record);
    List<Patient> selectByExample(PatientExample example);
    Patient selectByPrimaryKey(String id);
    int updateByExampleSelective(@Param("record") Patient record, @Param("example") PatientExample example);
    int updateByExample(@Param("record") Patient record, @Param("example") PatientExample example);
    int updateByPrimaryKeySelective(Patient record);
    int updateByPrimaryKey(Patient record);

    @Select("SELECT * "
    		+ "FROM tbl_patient WHERE STATUS = #{status}")
    @ResultMap("BaseResultMap")
	List<Patient> viewAllByStatus(@Param("status")byte databaseValue);

    @Select("SELECT * "
    		+ "FROM tbl_patient WHERE SURNAME LIKE #{surname} AND STATUS = #{status}")
    @ResultMap("BaseResultMap")
	List<Patient> search(@Param("surname")String searchWord, @Param("status")byte databaseValue);

    @Select("SELECT count(*) FROM tbl_patient WHERE SERIAL_NUMBER LIKE #{yearMonthPrefix}")
    Integer findMonthlyRegistrations(@Param("yearMonthPrefix")String serialPrefix);
	
    @Select("SELECT * "
    		+ "FROM tbl_patient WHERE SERIAL_NUMBER LIKE #{searchValue} AND STATUS = #{status}")
    @ResultMap("BaseResultMap")
    List<Patient> searchBySerial(@Param("searchValue")String likeSearchValue, @Param("status")byte databaseValue);
    
    @Select("SELECT * "
    		+ "FROM tbl_patient WHERE SURNAME LIKE #{searchValue} AND STATUS = #{status}")
    @ResultMap("BaseResultMap")
    List<Patient> searchBySurname(@Param("searchValue")String likeSearchValue, @Param("status")byte databaseValue);
    
    @Select("SELECT * "
    		+ "FROM tbl_patient WHERE FIRST_NAME LIKE #{searchValue} AND STATUS = #{status}")
    @ResultMap("BaseResultMap")
    List<Patient> searchByFirstName(@Param("searchValue")String likeSearchValue, @Param("status")byte databaseValue);
    
    @Select("SELECT * "
    		+ "FROM tbl_patient WHERE MOBILE LIKE #{searchValue} AND STATUS = #{status}")
    @ResultMap("BaseResultMap")
    List<Patient> searchByMobile(@Param("searchValue")String likeSearchValue, @Param("status")byte databaseValue);
    
    @Select("SELECT * "
    		+ "FROM tbl_patient WHERE EMAIL LIKE #{searchValue} AND STATUS = #{status}")
    @ResultMap("BaseResultMap")
    List<Patient> searchByEmail(@Param("searchValue")String likeSearchValue, @Param("status")byte databaseValue);
    
}
