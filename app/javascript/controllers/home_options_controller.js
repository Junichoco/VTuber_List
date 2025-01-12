import { Controller } from "@hotwired/stimulus"
import private_controller from "./private_controller";

// Connects to data-controller="home-options"
export default class extends Controller {
  static targets = ["menu", "submenu", "toggle_button", "private_button"]
  connect() {
    console.log("home options controller connected");
  }

  // reset_menu() {
  //   this.menuTarget.classList
  // }

  toggle_menu() {
    this.menuTarget.classList.toggle("d-none");
    this.toggle_buttonTarget.classList.toggle("options-button-toggled");

    if(this.toggle_buttonTarget.classList.contains("options-button-toggled")){
      this.toggle_buttonTarget.innerHTML = '<i class="fa-solid fa-square-xmark" ></i>';
      console.log("button changed to X");
    } else {
      this.toggle_buttonTarget.innerHTML = '<i class="fa-solid fa-bars" ></i>';
      this.submenuTarget.classList.remove("d-none");
    }
  }

  toggle_submenu() {
    this.submenuTarget.classList.toggle("d-none");
  }

  private(event) {
    // const list_id = parseInt(document.getElementsByClassName("home-list-card")[0].id);
    // console.log(`${event}`);

  }
}
