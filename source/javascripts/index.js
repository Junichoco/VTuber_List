console.log("monkey");

import { Application } from "@hotwired/stimulus";

import PasswordController from "./controllers/password_controller.js";

window.Stimulus = Application.start();
Stimulus.register("password", PasswordController);


const secret_section = document.getElementById("secret");
const password_box = document.querySelector("#password-box");
// const enter_button = document.getElementById("enter-button");
const enter_button = document.querySelector("#enter-button");
const message = document.querySelector("#message");

const password1 = "roast";
const password2 = "bread";
var question = 1;
var count = 10;
var passed = false;

enter_button.addEventListener("click", (event) => {
  event.preventDefault();
  console.log(password_box.value);

  if(!passed){
    if(question === 1){
      if(password_box.value === password1 && count >= 1){
        message.innerText = `Enter the password ${count} more times.`;
        password_box.value = "";
        count = count - 1;
      } else if (password_box.value === password1 && count === 0){
        question = 2;
        message.innerText = "What do you put in a toaster?";
        password_box.value = "";
      } else {
        message.innerText = `Wrong password`;
        password_box.value = "";
      }
    } else if (question === 2){
      if(password_box.value === password2){
        message.innerText = "You passed the test! Enjoy my boring stuff.";
        secret_section.classList.remove("d-none");
        passed = true;
        password_box.classList.add("d-none");
        enter_button.classList.add("d-none");
      } else{
        message.innerText = "What do you put in a toaster?\nWrong answer. Try again.";
        password_box.value = "";
      }
    }
  }

  // console.log(event);
  // console.log(event.currentTarget);
});
