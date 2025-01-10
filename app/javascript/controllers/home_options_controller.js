import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="home-options"
export default class extends Controller {
  static targets = ["menu", "submenu1", "button", "private_button"]
  connect() {
    console.log("home options controller connected");
  }

  // reset_menu() {
  //   this.menuTarget.classList
  // }

  toggle_menu() {
    this.menuTarget.classList.toggle("d-none");
    this.buttonTarget.classList.toggle("options-button-toggled");

    if(this.buttonTarget.classList.contains("options-button-toggled")){
      this.buttonTarget.innerHTML = '<i class="fa-solid fa-square-xmark" ></i>';
      console.log("button changed to X");
    } else {
      this.buttonTarget.innerHTML = '<i class="fa-solid fa-bars" ></i>';
      this.submenu1Target.classList.remove("d-none");
    }
  }

  toggle_submenu() {
    this.submenu1Target.classList.toggle("d-none");
  }
}
