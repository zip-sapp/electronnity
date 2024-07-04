document.addEventListener("DOMContentLoaded", function() {
    const username = document.getElementById("username");
    const password = document.getElementById("password");
    const email = document.getElementById("email");
    const firstname = document.getElementById("firstname");
    const middlename = document.getElementById("middlename");
    const lastname = document.getElementById("lastname");
    const address = document.getElementById("address");
    const birthday = document.getElementById("birthday");
    const number = document.getElementById("number");
    const usertype = document.getElementById("usertype");
    const form = document.getElementById("form");

    form.addEventListener('submit', (event) => {
        var a = username.value;
        var b = password.value;
        var d = email.value;
        var e = firstname.value;
        var f = middlename.value;
        var g = lastname.value;
        var h = address.value;
        var i = birthday.value;
        var j = number.value;
        var k = usertype.value;
        
        let errorMessage = ''; // Initialize errorMessage to an empty string

        function allFunction() {
            userName(a);
            userPassword(b);
            validateEmail(d);
            firstName(e);
            middleName(f);
            lastName(g);
            completeAddress(h);
            birthdayDate(i);
            mobileNum(j);
            userRoles(k);
        }

        function userName(a) {
            var username = a;
            var length1 = username.length; //test for length
            var whitespaces = username.trim(); //test for whitespaces
            var userVerify = /^[a-zA-Z0-9-_.-\s]+$/.test(username);

            if (length1 < 4 || length1 > 12 || userVerify === false || whitespaces === "") {
                errorMessage += "Error: Invalid username. Please enter a valid username.\n";
            }
        }

        function userPassword(b) {
            var password = b;
            var length2 = password.length;
            var whitespaces2 = password.trim();
            var userVerify2 = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[!@$&%*])/.test(password);

            if (length2 < 8 || length2 > 16 || userVerify2 === false || whitespaces2 === "") {
                errorMessage += "Error: Invalid password. Please enter a valid password.\n";
            }
        }

        function validateEmail(d) {
            var email = d;
            var whitespaces4 = email.trim();
            var userVerify4 = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@(gmail|yahoo|hotmail)\.[a-zA-Z]{2,}$/.test(email);

            if (userVerify4 === false || whitespaces4 === "") {
                errorMessage += "Error: Invalid email. Please enter a valid email.\n";
            }
        }

        function firstName(e) {
            var firstname = e;
            var length3 = firstname.length;
            var whitespaces5 = firstname.trim();
            var userVerify5 = /^[a-zA-Z\s]+$/.test(firstname);

            if (length3 < 1 || userVerify5 === false || whitespaces5 === "") {
                errorMessage += "Error: Invalid first name. Please enter a valid first name.\n";
            }
        }

        function middleName(f) {
            var middlename = f;
            var length4 = middlename.length;
            var userVerify6 = /^[A-Z.\s]+$/.test(middlename);

            if (length4 > 1 || userVerify6 === false) {
                errorMessage += "Error: Invalid middle name. Please enter a valid middle name.\n";
            }
        }

        function lastName(g) {
            var lastname = g;
            var length5 = lastname.length;
            var whitespaces6 = lastname.trim();
            var userVerify7 = /^[a-zA-Z\s.]+$/.test(lastname);

            if (length5 < 2 || userVerify7 === false || whitespaces6 === "") {
                errorMessage += "Error: Invalid last name. Please enter a valid last name.\n";
            }
        }

        function completeAddress(h) {
            var address = h;
            var whitespaces7 = address.trim();
            var userVerify8 = /^[\w.,-\s]+$/.test(address);

            if (userVerify8 === false || whitespaces7 === "") {
                errorMessage += "Error: Invalid address. Please enter a valid address.\n";
            }
        }

        function birthdayDate(i) {
            var birthday = i;
            var whitespaces8 = birthday.trim();
            var userVerify9 = /^([0-9]{2})\-([0-9]{2})\-([0-9]{4})$/.test(birthday);

            if (userVerify9 === false || whitespaces8 === "") {
                errorMessage += "Error: Invalid birthday. Please enter a valid birthday.\n";
            }
        }

        function mobileNum(j) {
            var number = j;
            var whitespaces9 = number.trim();
            var userVerify10 = /^[\d]{11}$/.test(number);

            if (userVerify10 === false || whitespaces9 === "") {
                errorMessage += "Error: Invalid mobile number. Please enter a valid mobile number.\n";
            }
        }

        function userRoles(k) {
            var usertype = k;
            var whitespaces10 = usertype.trim();
            if (k !== "Administrator" && k !== "Client" || whitespaces10 === "") {
                errorMessage += "Error: Invalid user role. Please select either Administrator or Client.\n";
            }
        }

        allFunction();

        if (errorMessage !== '') {
            alert(errorMessage);
            event.preventDefault();
        } else {
            alert("All validations are correct. Form will be submitted.");
        }
    });
});
