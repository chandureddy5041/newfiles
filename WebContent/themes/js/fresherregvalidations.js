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
/* SSC Percentage */
function ssc_perc1(inputtxt) {
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
		message.innerHTML = "Enter valid percentage";
		return false;
	}
}
/* Inter Percentage */
function inter_perc1(inputtxt) {
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
		message.innerHTML = "Enter valid percentage";
		return false;
	}
}
/* UG Percentage */
function ug_perc1(inputtxt) {
	var numbers1 = /^[0-9]{1}$/g;
	var numbers2 = /^[0-9]{2}$/g;
	var message = document.getElementById('message10');
	if (inputtxt.value.match(numbers1)) {
		message.innerHTML = "";
		return true;
	} else if (inputtxt.value.match(numbers2)) {
		message.innerHTML = "";
		return true;
	} else {
		message.innerHTML = "Enter valid percentage";
		return false;
	}
}
/* PG Percentage */
function pg_perc1(inputtxt) {
	var numbers1 = /^[0-9]{1}$/g;
	var numbers2 = /^[0-9]{2}$/g;
	var message = document.getElementById('message11');
	if (inputtxt.value.match(numbers1)) {
		message.innerHTML = "";
		return true;
	} else if (inputtxt.value.match(numbers2)) {
		message.innerHTML = "";
		return true;
	} else {
		message.innerHTML = "Enter valid percentage";
		return false;
	}
}