import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["button", "menu"]
  connect() {
    // console.log("dropdown controller connected");
  }
  toggle(event) {
    console.log("dropdown toggled");
    // this.menuTarget.classList.toggle("display");
    if(this.menuTarget.classList.contains("d-none")){
      this.menuTarget.classList.remove("d-none");
      // console.log("toggle on");
      this.buttonTarget.innerHTML = '<i class="fa-solid fa-x"></i>';
    }else{
      this.menuTarget.classList.add("d-none");
      this.buttonTarget.innerHTML = '<span class="navbar-toggler-icon toggle-button"></span>';
      // console.log("toggle off");
    }
  }
}
