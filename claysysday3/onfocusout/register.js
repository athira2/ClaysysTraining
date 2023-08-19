const stateDropdown = document.getElementById("state");
        const cityDropdown = document.getElementById("city");

        const citiesByState = {
          AP: ["Visakhapatnam", "Vijayawada", "Guntur"],
          KA: ["Bengaluru", "Mysuru", "Hubballi"],
          KL: ["Kochi", "Thiruvananthapuram", "Kozhikode"],
          MH: ["Mumbai", "Pune", "Nagpur"],
          TN: ["Chennai", "Coimbatore", "Madurai"],
          TS: ["Hyderabad", "Warangal", "Karimnagar"],
        };

        stateDropdown.addEventListener("change", function () {
          const selectedState = stateDropdown.value;
          const cities = citiesByState[selectedState];

          cityDropdown.innerHTML =
            '<option value="none" selected disabled>Select a City</option>';
          cityDropdown.disabled = false;

          if (cities) {
            cities.forEach((city) => {
              const option = document.createElement("option");
              option.value = city.toLowerCase().replace(" ", "-");
              option.textContent = city;
              cityDropdown.appendChild(option);
            });
          } else {
            cityDropdown.innerHTML =
              '<option value="none" selected disabled>No Cities Available</option>';
            cityDropdown.disabled = true;
          }
        });


function validateForm() {
    var password = document.getElementById("password").value;
    var confirmPassword =
      document.getElementById("confirm-password").value;

    if (password !== confirmPassword) {
      alert("Error: Passwords do not match!");
      return false;
    }

    return true;
  }

  function validateEmail(email) {
    const emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
    return emailPattern.test(email);
  }
  
  document.addEventListener("DOMContentLoaded", function () {
    const emailInput = document.getElementById("email");
    const loginForm = document.querySelector("form");
  
    loginForm.addEventListener("submit", function (event) {
      const emailValue = emailInput.value.trim();
  
      if (!validateEmail(emailValue)) {
        event.preventDefault();
        alert("Invalid email address format. Please enter a valid email.");
      }
    });
  });

let x = document.getElementById("RegisterForm");
        const first = document.getElementById("first-name");
        const last = document.getElementById("last-name");
        const age = document.getElementById("last-name");
        const phone = document.getElementById("phonenumber");
        const email = document.getElementById("email");
        const address = document.getElementById("address");
        const username = document.getElementById("username");
        const pasword = document.getElementById("password");
        const cpassword = document.getElementById("confirm-password");


        first.addEventListener("focus", myFocusFunction, true);
        last.addEventListener("focus", myFocusFunction1, true);
        age.addEventListener("focus", myFocusFunction2, true);
        phone.addEventListener("focus", myFocusFunction3, true);
        email.addEventListener("focus", myFocusFunction4, true);
        address.addEventListener("focus", myFocusFunction5, true);
        username.addEventListener("focus", myFocusFunction6, true);
        pasword.addEventListener("focus", myFocusFunction7, true);
        cpassword.addEventListener("focus", myFocusFunction8, true);


function myFocusFunction() {
  document.getElementById("first-name").style.backgroundColor = "#39c8bf";
}
function myFocusFunction1() {
    document.getElementById("last-name").style.backgroundColor = "#39c8bf";
  }
  function myFocusFunction2() {
    document.getElementById("age").style.backgroundColor = "#39c8bf";
  }
  function myFocusFunction3() {
    document.getElementById("phonenumber").style.backgroundColor = "#39c8bf";
  }
  function myFocusFunction4() {
    document.getElementById("email").style.backgroundColor = "#39c8bf";
  }
  function myFocusFunction5() {
    document.getElementById("address").style.backgroundColor = "#39c8bf";
  }
  function myFocusFunction6() {
    document.getElementById("username").style.backgroundColor = "#39c8bf";
  }
  function myFocusFunction7() {
    document.getElementById("password").style.backgroundColor = "#39c8bf";
  }
  function myFocusFunction8() {
    document.getElementById("confirm-password").style.backgroundColor = "#39c8bf";
  }