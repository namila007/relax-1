<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html lang="en">

<head>
	
	<s:include value="/WEB-INF/content/common/meta-tags.jsp"></s:include>
    <title><s:text name="global.application.title" /></title>
	<s:include value="/WEB-INF/content/common/css-include.jsp"></s:include>
	
</head>

<body class="nav-md">
	<div class="container body">
		<div class="main_container">

			<s:include value="/WEB-INF/content/common/title-bar.jsp"></s:include>
			<s:include value="/WEB-INF/content/common/top-bar.jsp"></s:include>
			
			<!-- page content -->
			<div class="right_col" role="main">
				<h2>Patient Registration</h2>

<form action="" method="post">

    <div >
        <div class="form-group-sm">
            <label for="serialNumber">Serial Number:</label>
            <input type="text" class="form-control" id="name" name="serial" placeholder="20170312345">
        </div>

        <div class="form-group">
            <label for="title">Title:</label>
            <select class="form-control" name="title">
                <option value="Mr" selected>Mr.</option>
                <option value="Ms">Ms.</option>
                <option value="Rev">Rev.</option>
            </select>			
        </div>


        <div class="form-group">
            <label for="name">Patient Name:</label>
            <input type="text" id="name" name="surName" class="form-control" placeholder="Surname">
            <input type="text" id="name" name="iniName" class="form-control" placeholder="Initials">
            <input type="text" id="name" name="firstName" class="form-control" placeholder="First name">

        </div>
        <div class="input-group-sm">
            <br>
            <label for="nic">NIC number:</label>
            <input type="text" class="form-control" id="nicfield" name="nic">
            <label for="checkbox"> Child :</label>		
            <input type="checkbox" name="child" class="checkbox-inline" id="check_child" value="child">
        </div>

        <script>
            document.getElementById('check_child').onchange = function ()
            {
                document.getElementById('nicfield').disabled = this.checked;
            };
        </script>


        <div class="form-group">
            <br>
            <label for="birthDay">Date of Birth:</label>
            <input type="date" class="form-control" id="bday" name="birthday">
        </div>	


        <div class="form-group">
            <label for="sex">Sex: </label>
            <label class="radio-inline"><input type="radio" name="male">Male</label>
            <label class="radio-inline"><input type="radio" name="female">Female</label>
            <label class="radio-inline"><input type="radio" name="other">Other</label>
        </div>

    </div>

    <div>
        <div>
            <label for="ethnicity">Ethnicity:</label>
            <select class="form-control">
                <option value="Sinhala" selected>Sinhala</option>
                <option value="Tamil">Tamil</option>
                <option value="Muslim">Muslim</option>
                <option value="Other">Other</option>
            </select>			
        </div>

        <div class="form-group">
            <label for="district">District:</label>
            <input type="text" class="form-control" id="district_id" name="district" list="districtList">

            <datalist id="districtList">
                <label for="suggestion">or pick a districtList</label>
                <select class="form-control" id="suggestion" name="altDistrict">
                    <option>Ampara</option>
                    <option>Anuradhapura</option>
                    <option>Badulla</option>
                    <option>Batticaloa</option>
                    <option>Colombo</option>
                    <option>Galle</option>
                    <option>Gampaha</option>
                    <option>Hambantota</option>
                    <option>Jaffna</option>
                    <option>Kalutara</option>
                    <option>Kandy</option>
                    <option>Kegalle</option>
                    <option>Kilinochchi</option>
                    <option>Kurunegala</option>
                    <option>Mannar</option>
                    <option>Matale</option>
                    <option>Matara</option>
                    <option>Moneragala</option>
                    <option>Mullaitivu</option>
                    <option>Nuwara Eliya</option>	
                    <option>Polonnaruwa</option>
                    <option>Puttalam</option>	
                    <option>Ratnapura</option>
                    <option>Trincomalee</option>
                    <option>Vavuniya</option>
                </select>
            </datalist>
        </div>

        <div class="form-group">
            <label for="country">Country:</label>
            <select class="form-control">
                <option value="Sri Lankan" selected>Sri Lankan</option>
                <option value="Non Sri Lankan">Non Sri Lankan</option>
            </select>			
        </div>	

        <div class="form-group">
            <label for="phone">Phone number:</label>
            <input type="text" class="form-control" id="phoneNo" name="patient_phoneNo">
        </div>

        <div class="form-group">
            <label for="mail">E-mail:</label>
            <input type="email" class="form-control" id="mail" name="patient_mail">
        </div>
        <div class="form-group">
            <label for="address">Address:</label>
            <textarea class="form-control" id="address" name="patient_address"></textarea>
        </div>

    </div>    


    <div class="btn-group col-lg-12">
        <button class="btn-default" type="submit">
            <strong>Add referrals</strong>
        </button>
        <button class="btn-default" type="submit">
            <strong>Next</strong>
        </button>
        <button class="btn-success" type="reset">
            <strong>Register</strong>
        </button>		
    </div>



</form>
				
			</div>
			<!-- /page content -->

		</div>
	</div>

	<!-- Custom Theme Scripts -->
	<s:include value="/WEB-INF/content/common/js-include.jsp" ></s:include>
</body>
</html>
