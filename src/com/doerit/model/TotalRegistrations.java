package com.doerit.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class TotalRegistrations {

	private Integer totalCount;
	private Integer maleCount;
	private Integer femaleCount;
	private Integer childCount;
	private List<Integer> totalCounts;
	
	public Integer getTotal() {
		return totalCount;
	}
	
	public Integer getMaleTotal() {
		return maleCount;
	}
	
	public Integer getFemaleTotal() {
		return femaleCount;
	}
	
	public Integer getChildTotal() {
		return childCount;
	}
	
	public List<Integer> getTotalCounts(){
		return totalCounts;
	}

	public void setTotal(Integer total) {
		this.totalCount = total;
	}
	
	public void setMaleTotal(Integer total) {
		this.maleCount = total;
	}
	
	public void setFemaleTotal(Integer total) {
		this.femaleCount = total;
	}

	public void setChildTotal(Integer total) {
		this.childCount = total;
	}
	
	public void setTotalCounts(List<Integer> l) {
		this.totalCounts = l;
	}
	
	@Override
	public String toString() {
		return "TotalRegistrations [ total="+ totalCount + ", maleTotal="+ maleCount + ", femaleTotal=" + femaleCount +
				", childTotal=" + childCount + "]";
	}
}
