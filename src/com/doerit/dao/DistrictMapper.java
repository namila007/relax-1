package com.doerit.dao;

import com.doerit.model.District;
import com.doerit.model.DistrictExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface DistrictMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_district
     *
     * @mbggenerated Sun Jul 09 08:24:40 IST 2017
     */
    int countByExample(DistrictExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_district
     *
     * @mbggenerated Sun Jul 09 08:24:40 IST 2017
     */
    int deleteByExample(DistrictExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_district
     *
     * @mbggenerated Sun Jul 09 08:24:40 IST 2017
     */
    int deleteByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_district
     *
     * @mbggenerated Sun Jul 09 08:24:40 IST 2017
     */
    int insert(District record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_district
     *
     * @mbggenerated Sun Jul 09 08:24:40 IST 2017
     */
    int insertSelective(District record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_district
     *
     * @mbggenerated Sun Jul 09 08:24:40 IST 2017
     */
    List<District> selectByExample(DistrictExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_district
     *
     * @mbggenerated Sun Jul 09 08:24:40 IST 2017
     */
    District selectByPrimaryKey(String id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_district
     *
     * @mbggenerated Sun Jul 09 08:24:40 IST 2017
     */
    int updateByExampleSelective(@Param("record") District record, @Param("example") DistrictExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_district
     *
     * @mbggenerated Sun Jul 09 08:24:40 IST 2017
     */
    int updateByExample(@Param("record") District record, @Param("example") DistrictExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_district
     *
     * @mbggenerated Sun Jul 09 08:24:40 IST 2017
     */
    int updateByPrimaryKeySelective(District record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tbl_district
     *
     * @mbggenerated Sun Jul 09 08:24:40 IST 2017
     */
    int updateByPrimaryKey(District record);
}