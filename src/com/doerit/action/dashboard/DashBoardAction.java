package com.doerit.action.dashboard;

import com.doerit.action.AbstractManagementAction;
import com.doerit.exception.SessionNotExist;

public class DashBoardAction extends AbstractManagementAction {

	private static final long serialVersionUID = 1L;

	public String index() {
		return SUCCESS;
	}
	
	public String reports() {
		return SUCCESS;
	}
	
	public String dashBoard() {
		
		String userRole = null;
		try {
			userRole = getUserRole();
			
			if (userRole.equals("EMPLOYEE")) {
				System.out.println("emp login");
				employeeDashboard();
				
				return userRole;
				
			} else if (userRole.equals("PATIENT")) {
				userDashboard();
				return userRole;
				
			} else if (userRole.equals("DEPARTMENT")) {
				departmentDashboard();
				System.out.println("dep login");
				return userRole;
			} 
			
		} catch (SessionNotExist e) {
			e.printStackTrace();
		}
				
		return userRole;
	}

	private void departmentDashboard() {
	}

	private void employeeDashboard() { 
	}
	
	private void userDashboard() {
				
	}
	
}
