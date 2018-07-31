/* Login Email */
function loginemail() {
	var x = document.forms["form2"]["emailid1"].value;
	var message = document.getElementById('message20');
	var atpos = x.indexOf("@");
	var dotpos = x.lastIndexOf(".");
	if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= x.length) {
		message.innerHTML = "Not a valid e-mail address";
		return false;
	} else {
		message.innerHTML = "";
	}

}
/* Login submit */
function formsubmit1() {
	var Password = document.getElementById("password").value;
	var message23 = document.getElementById('message23');
	var email = document.getElementById('emailid1').value;
	if (document.form2.emailid1.value == '' || document.form2.password == '') {
		message23.innerHTML = "Please, Fill the required fields";
		return false;
	} else {
		return true;
	}
}
/* Registration First and Last Name */
function ufname(inputtxt2) {
	var numbers = /^[A-Za-z]{4,10}$/g;
	var message = document.getElementById('fi_name');
	var x = document.getElementById('fname').value;
	if (x.match(numbers)) {
		message.innerHTML = "";
		return true;
	} else {
		message.innerHTML = "Min 4, Max 10 Characters";
		return false;
	}
	if (x == '' || x == null) {
		message.innerHTML = "Min 4, Max 10 Characters";
		return false;
	}
}
function ulname(inputtxt2) {
	var numbers = /^[A-Za-z]{4,10}$/g;
	var message = document.getElementById('la_name');
	var x = document.getElementById('lname').value;
	if (x.match(numbers)) {
		message.innerHTML = "";
		return true;
	} else {
		message.innerHTML = "Min 4, Max 10 Characters";
		return false;
	}
	if (x == '' || x == null) {
		message.innerHTML = "Min 4, Max 10 Characters";
		return false;
	}
}
function onlyAlphabets(e) {
	if (window.event) {
		var charCode = window.event.keyCode;
	} else if (e) {
		var charCode = e.which;
	} else {
		return true;
	}
	if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123)) {
		return true;
	} else {
		return false;
	}
}
/* Registration Mobile no */
function cellph(inputtxt) {
	var numbers = /^[7-9][0-9]{9}$/g;
	var message = document.getElementById('message8');
	if (inputtxt.value.match(numbers)) {
		message.innerHTML = "";
		return true;
	} else {
		message.innerHTML = "Enter 10 digit Number";
		return false;
	}
}
function onlyNumbers(e) {
	if (window.event) {
		var charCode = window.event.keyCode;
	} else if (e) {
		var charCode = e.which;
	} else {
		return true;
	}
	if ((charCode > 47 && charCode < 58)) {
		return true;
	} else {
		return false;
	}
}
/* Registration Email */
function emailid() {
	var x = document.forms["form1"]["emaili"].value;
	var message = document.getElementById('message7');
	var atpos = x.indexOf("@");
	var dotpos = x.lastIndexOf(".");
	if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= x.length) {
		message.innerHTML = "Not a valid e-mail address";
		return false;
	} else {
		message.innerHTML = "";
	}

}
/* Registration Password & Re type */
function passd() {
	var Password = document.getElementById("Password").value;
	var RetypePassword = document.getElementById("retypepassword").value;
	var message1 = document.getElementById('message1');
	var passmin = document.getElementById('passmin');
	var ok = true;
	if (Password.length < 6 || Password.length > 10) {
		passmin.innerHTML = "Min 6, Max 10 Characters ";
	} else {
		passmin.innerHTML = "";
	}
	if (Password != RetypePassword) {
		message1.innerHTML = "Password do not match ";
		ok = false;
	} else {
		message1.innerHTML = "Password matched ";
	}
	return ok;
}
/* City name in registration */
function city_name(inputtxt2) {
	var numbers = /^[A-Za-z]{3,15}$/g;
	var message = document.getElementById('ci_name');
	var x = document.getElementById('cityname').value;
	if (x.match(numbers)) {
		message.innerHTML = "";
		return true;
	} else {
		message.innerHTML = "Min 3 Characters";
		return false;
	}
	if (x == '' || x == null) {
		message.innerHTML = "Min 3 Characters";
		return false;
	}
}
/* State name in registration */
function state_name(inputtxt2) {
	var numbers = /^[A-Za-z]{3,15}$/g;
	var message = document.getElementById('st_name');
	var x = document.getElementById('statename').value;
	if (x.match(numbers)) {
		message.innerHTML = "";
		return true;
	} else {
		message.innerHTML = "Min 3 Characters";
		return false;
	}
	if (x == '' || x == null) {
		message.innerHTML = "Min 3 Characters";
		return false;
	}
}
/* Pincode registration */
function zip_code(inputtxt) {
	var numbers = /^[0-9]{6}$/g;
	var message = document.getElementById('zip_message');
	if (inputtxt.value.match(numbers)) {
		message.innerHTML = "";
		return true;
	} else {
		message.innerHTML = "Enter valid Pincode";
		return false;
	}
}
/* Registration form submit */
function formsubmit() {
	var Password = document.getElementById("Password").value;
	var RetypePassword = document.getElementById("retypepassword").value;
	var message16 = document.getElementById('message16');
	var fname = document.getElementById('fname').value;
	var lname = document.getElementById('lname').value;
	var mno = document.getElementById('mobilenumber').value;
	var emailid1 = document.getElementById('emaili').value;
	var cityn = document.getElementById('cityname').value;
	var staten = document.getElementById('statename').value;
	var zipcode = document.getElementById('zip').value;
	if (document.form1.fname.value == '' || document.form1.cityname.value == ''
			|| document.form1.statename.value == ''
			|| document.form1.zip.value == ''
			|| document.form1.lname.value == ''
			|| document.form1.mobilenumber.value == ''
			|| document.form1.emaili.value == '' || Password != RetypePassword) {
		message16.innerHTML = "Please, Fill the required fields";
		return false;
	} else {
		return true;
	}
}
/* Forgot Email */
function forgotemail() {
	var x = document.forms["form3"]["emailid2"].value;
	var message = document.getElementById('emailid2a');
	var atpos = x.indexOf("@");
	var dotpos = x.lastIndexOf(".");
	if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= x.length) {
		message.innerHTML = "Not a valid e-mail address";
		return false;
	} else {
		message.innerHTML = "";
	}

}
/* Forgot submit */
function formsubmit2() {
	var x = document.forms["form3"]["emailid2"].value;
	var atpos = x.indexOf("@");
	var dotpos = x.lastIndexOf(".");
	var message = document.getElementById('forsub');
	var email = document.getElementById('emailid2').value;
	if (document.form3.emailid2.value == '' || atpos < 1 || dotpos < atpos + 2
			|| dotpos + 2 >= x.length) {
		message.innerHTML = "Please, Fill the required field correctly";
		return false;
	} else {
		return true;
	}
}
/* Change Password & Re type */
function newpassd() {
	var Password = document.getElementById("newpassword").value;
	var RetypePassword = document.getElementById("cnfnewpassword").value;
	var message1 = document.getElementById('changepasswd');
	var passmin = document.getElementById('newpassmin');
	var ok = true;
	if (Password.length < 6 || Password.length > 10) {
		passmin.innerHTML = "Min 6, Max 10 Characters ";
	} else {
		passmin.innerHTML = "";
	}
	if (Password != RetypePassword) {
		message1.innerHTML = "Password do not match ";
		ok = false;
	} else {
		message1.innerHTML = "Password matched ";
	}
	return ok;
}
/* Change Password submit */
function formsubmit3() {
	var Password = document.getElementById("newpassword").value;
	var RetypePassword = document.getElementById("cnfnewpassword").value;
	var message23 = document.getElementById('forgotsub');
	if (Password == '' || Password != RetypePassword) {
		message23.innerHTML = "Please, Fill the required fields";
		return false;
	} else {
		return true;
	}
}
/* Change Password submit */
function contactformsubmit() {
	var fname = document.getElementById('fname').value;
	var emailid1 = document.getElementById('emaili').value;
	var messagehii = document.getElementById('messagespan');

	if (document.form1.fname.value == '' || document.form1.emaili.value == '') {
		messagehii.innerHTML = "Please, Fill the required fields";
		return false;
	} else {
		return true;
	}
}
/* Online Registration form submit */
function onlineformsubmit() {
	var message16 = document.getElementById('message16');
	var fname = document.getElementById('fname').value;
	var lname = document.getElementById('lname').value;
	var mno = document.getElementById('mobilenumber').value;
	var emailid1 = document.getElementById('emaili').value;
	if (document.form1.fname.value == '' || document.form1.lname.value == ''
			|| document.form1.mobilenumber.value == ''
			|| document.form1.emaili.value == '') {
		message16.innerHTML = "Please, Fill the required fields";
		return false;
	} else {
		return true;
	}
}