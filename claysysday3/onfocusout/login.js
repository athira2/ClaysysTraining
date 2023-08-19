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
  

let x = document.getElementById("ContactForm");
        const email = document.getElementById("email");


email.addEventListener("focus", myFocusFunction, true);
function myFocusFunction() {
  document.getElementById("email").style.backgroundColor = "#39c8bf";
}