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


  let x = document.getElementById("ContactForm");
        const email = document.getElementById("email");

        x.addEventListener("focus", myFocusFunction, true);

email.addEventListener("focus", myFocusFunction);
function myFocusFunction() {
  document.getElementById("email").style.backgroundColor = "#39c8bf";
}


    function showSuccessPrompt() {
      alert(
        "Your message has been recieved to us!! We will reach out  you as very soon."
      );
    }
    document.addEventListener("DOMContentLoaded", function () {
      const form = document.querySelector("form");

      if (form) {
        form.addEventListener("submit", function (event) {
          event.preventDefault();
          form.reset();
          showSuccessPrompt();
        });
      }
    });
  