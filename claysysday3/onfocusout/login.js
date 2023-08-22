function validateEmail(email) {
    const emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
    return emailPattern.test(email);
  }
  
  document.addEventListener("DOMContentLoaded", function () {
    const emailInput = document.getElementById("email");
    var password = document.getElementById("password").value;

    const loginForm = document.querySelector("form");
  
    loginForm.addEventListener("submit", function (event) {
      const emailValue = emailInput.value;

  
      if (!validateEmail(emailValue)) {
        event.preventDefault();
        alert("Invalid email address format. Please enter a valid email.");
      }
      else if (password.length<6) {
        alert("Error: Password must contain atleast 6 charecters!");
        return false;
      }
    });
  });

  
  

let x = document.getElementById("ContactForm");
        const email = document.getElementById("email");


email.addEventListener("focus", myFocusFunction, true);
function myFocusFunction() {
  document.getElementById("email").style.backgroundColor = "#39c8bf";
}