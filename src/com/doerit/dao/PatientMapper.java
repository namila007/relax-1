package com.doerit.dao;

import com.doerit.model.Patient;
import com.doerit.model.PatientExample;
import com.doerit.model.criteria.SearchCriteria;
import com.doerit.util.Pager;

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
    
    int updateByExampleSelective(@Param("record") Patient record, @Param("example") PatientExample example);
    int updateByExample(@Param("record") Patient record, @Param("example") PatientExample example);
    int updateByPrimaryKeySelective(Patient record);
    int updateByPrimaryKey(Patient record);

    @Select("SELECT c.*, d.NAME as DISTRICT_NAME, p.NAME as PROVINCE_NAME " + 
    		" FROM tbl_patient c LEFT JOIN tbl_district d " +  
    		" ON c.DISTRICT_ID = d.ID LEFT JOIN tbl_province p " + 
    		" ON d.PROVINCE_ID = p.ID  WHERE c.ID = #{id}")
    @ResultMap("BaseResultMap")
    Patient viewByPrimaryKey(@Param("id")String id);
    
    @Select("SELECT c.* " + 
    		" FROM tbl_patient c " +  
    		" WHERE c.STATUS = #{status} " + 
    		" ORDER BY INSERT_DATETIME DESC " +
    		" LIMIT #{pager.start}, #{pager.limit}")
    @ResultMap("BaseResultMap")
	List<Patient> viewAllByStatus(@Param("pager")Pager pager,  @Param("status")byte status);
    
    @Select("SELECT count(0) " + 
    		" FROM tbl_patient c " +  
    		" WHERE c.STATUS = #{status}")
	Integer countAllByStatus(@Param("status")byte status);

    @Select("SELECT c.* " + 
    		" FROM tbl_patient c " +  
    		" WHERE c.SURNAME LIKE #{surname} AND c.STATUS = #{status}")
    @ResultMap("BaseResultMap")
	List<Patient> search(@Param("surname")String searchWord, @Param("status")byte databaseValue);

    @Select("SELECT count(*) FROM tbl_patient WHERE SERIAL_NUMBER LIKE #{yearMonthPrefix}")
    Integer findMonthlyRegistrations(@Param("yearMonthPrefix")String serialPrefix);
	
    @Select("SELECT c.* " + 
    		" FROM tbl_patient c " +  
    		" WHERE c.SERIAL_NUMBER LIKE #{searchValue} AND c.STATUS = #{status}")
    @ResultMap("BaseResultMap")
    List<Patient> searchBySerial(@Param("searchValue")String likeSearchValue, @Param("status")byte databaseValue);
    
    @Select("SELECT c.* " + 
    		" FROM tbl_patient c " +  
    		" WHERE c.SURNAME LIKE #{searchValue} AND c.STATUS = #{status}")
    @ResultMap("BaseResultMap")
    List<Patient> searchBySurname(@Param("searchValue")String likeSearchValue, @Param("status")byte databaseValue);
    
    @Select("SELECT c.* " + 
    		" FROM tbl_patient c " +  
    		" WHERE c.FIRST_NAME LIKE #{searchValue} AND c.STATUS = #{status}")
    @ResultMap("BaseResultMap")
    List<Patient> searchByFirstName(@Param("searchValue")String likeSearchValue, @Param("status")byte databaseValue);

    @Select("SELECT c.* " + 
    		" FROM tbl_patient c " +  
    		" WHERE c.NIC LIKE #{searchValue} AND c.STATUS = #{status}")
    @ResultMap("BaseResultMap")
    List<Patient> searchByNic(@Param("searchValue")String likeSearchValue, @Param("status")byte databaseValue);    
    
    @Select("SELECT c.* " + 
    		" FROM tbl_patient c " +  
    		" WHERE c.MOBILE LIKE #{searchValue} AND c.STATUS = #{status}")
    @ResultMap("BaseResultMap")
    List<Patient> searchByMobile(@Param("searchValue")String likeSearchValue, @Param("status")byte databaseValue);
    
    @Select("SELECT c.* " + 
    		" FROM tbl_patient c " +  
    		" WHERE c.EMAIL LIKE #{searchValue} AND c.STATUS = #{status}")
    @ResultMap("BaseResultMap")
    List<Patient> searchByEmail(@Param("searchValue")String likeSearchValue, @Param("status")byte databaseValue);
	
    @Select("SELECT c.* " + 
    		" FROM tbl_patient c " +  
    		" WHERE c.STATUS = #{status}")
    @ResultMap("BaseResultMap")
    List<? extends Object> viewAllBySearch(SearchCriteria criteria);
    
	
}
