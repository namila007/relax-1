package com.doerit.action.dashboard;

import com.doerit.action.AbstractManagementAction;
import com.doerit.exception.SessionNotExist;
import com.doerit.model.type.UserRoleType;

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
				employeeDashboard();
				
				return userRole;
				
			} else if (userRole.equals("PATIENT")) {
				userDashboard();
			} 
		} catch (SessionNotExist e) {
			e.printStackTrace();
		}
				
		return userRole;
	}

	private void employeeDashboard() { 
	}
	
	private void userDashboard() {
				
	}
	
}
