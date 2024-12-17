import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="home-options"
export default class extends Controller {
  static targets = ["menu", "button"]
  connect() {
    console.log("home options controller connected");
  }

  toggle() {
    this.menuTarget.classList.toggle("d-none");
    this.buttonTarget.classList.toggle("options-button-toggled");

    if(this.buttonTarget.classList.contains("options-button-toggled")){
      this.buttonTarget.innerHTML = '<i class="fa-solid fa-square-xmark" ></i>';
      console.log("button changed to X");
    } else {
      this.buttonTarget.innerHTML = '<i class="fa-solid fa-bars" ></i>';
      console.log("button changed to bars");
    }
  }
}
