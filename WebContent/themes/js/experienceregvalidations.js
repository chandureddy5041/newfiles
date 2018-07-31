/* Allow only 0 to 9 */
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
/* Allow only A to Z and a to z */
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
/* Relevant years */
function RE_years1(inputtxt) {
	var numbers1 = /^[0-9]{1}$/g;
	var numbers2 = /^[0-9]{2}$/g;
	var message = document.getElementById('message8');
	if (inputtxt.value.match(numbers1)) {
		message.innerHTML = "";
		return true;
	} else if (inputtxt.value.match(numbers2)) {
		message.innerHTML = "";
		return true;
	} else {
		message.innerHTML = "Enter valid years";
		return false;
	}
}
/* Relevant months */
function RE_months1(inputtxt) {
	var numbers1 = /^[0-9]{1}$/g;
	var numbers2 = /^[0-9]{2}$/g;
	var message = document.getElementById('message9');
	if (inputtxt.value.match(numbers1)) {
		message.innerHTML = "";
		return true;
	} else if (inputtxt.value.match(numbers2)) {
		message.innerHTML = "";
		return true;
	} else {
		message.innerHTML = "Enter valid months";
		return false;
	}
}
/* Current CTC */
function TE_years1(inputtxt) {
	var numbers1 = /^[0-9]{1}$/g;
	var numbers2 = /^[0-9]{2}$/g;
	var message = document.getElementById('message12');
	if (inputtxt.value.match(numbers1)) {
		message.innerHTML = "";
		return true;
	} else if (inputtxt.value.match(numbers2)) {
		message.innerHTML = "";
		return true;
	} else {
		message.innerHTML = "Enter valid years";
		return false;
	}
}
/* Expected CTC */
function TE_months1(inputtxt) {
	var numbers1 = /^[0-9]{1}$/g;
	var numbers2 = /^[0-9]{2}$/g;
	var message = document.getElementById('message13');
	if (inputtxt.value.match(numbers1)) {
		message.innerHTML = "";
		return true;
	} else if (inputtxt.value.match(numbers2)) {
		message.innerHTML = "";
		return true;
	} else {
		message.innerHTML = "Enter valid months";
		return false;
	}
}
/* Notice period */
function notice_p1(inputtxt) {
	var numbers1 = /^[0-9]{1}$/g;
	var numbers2 = /^[0-9]{2}$/g;
	var message = document.getElementById('message14');
	if (inputtxt.value.match(numbers1)) {
		message.innerHTML = "";
		return true;
	} else if (inputtxt.value.match(numbers2)) {
		message.innerHTML = "";
		return true;
	} else {
		message.innerHTML = "Enter valid days";
		return false;
	}
}