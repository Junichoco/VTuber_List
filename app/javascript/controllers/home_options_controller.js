import { Controller } from "@hotwired/stimulus"
// import { useClickOutside } from 'stimulus-use';
import private_controller from "./private_controller";

// Connects to data-controller="home-options"

let menuOpen = false;

export default class extends Controller {
  static targets = ["menu", "submenu", "toggle_button", "private_button", "left_private_icon", "right_private_icon"]

  static values = {
    menuOpen: Boolean
  }

  connect() {
    // console.log("home options controller connected");
    // useClickOutside(this);
  }

  // reset_menu() {
  //   this.menuTarget.classList
  // }

  toggle_open() {

  }


  toggle_menu(event) {
    // check if menu is already open for other list
      if(menuOpen && !event.currentTarget.classList.contains("options-button-toggled")){
      let openMenu = document.getElementsByClassName("menu-toggled")[0];
      let openButton = document.getElementsByClassName("options-button-toggled")[0];

      if(openMenu && openButton){
        openMenu.classList.remove("menu-toggled");
        openMenu.classList.add("d-none");
        openButton.classList.remove("options-button-toggled");
        openButton.innerHTML = '<i class="fa-solid fa-bars" ></i>';
      }
    }

    this.menuTarget.classList.toggle("d-none");
    this.menuTarget.classList.toggle("menu-toggled");
    this.toggle_buttonTarget.classList.toggle("options-button-toggled");

    if(this.toggle_buttonTarget.classList.contains("options-button-toggled")){
      this.toggle_buttonTarget.innerHTML = '<i class="fa-solid fa-square-xmark" ></i>';
      menuOpen = true;
    } else {
      this.toggle_buttonTarget.innerHTML = '<i class="fa-solid fa-bars" ></i>';
      menuOpen = false;
    }

  }


  private(event) {
    // const list_id = parseInt(document.getElementsByClassName("home-list-card")[0].id);
    // console.log(`${event}`);
    this.left_private_iconTarget.classList.toggle("d-none");

    this.right_private_iconTarget.classList.toggle("unprivated");
    this.right_private_iconTarget.classList.toggle("privated");

    if(this.right_private_iconTarget.classList.contains("unprivated")){
      this.right_private_iconTarget.innerHTML = '<i class="fa-solid fa-lock-open"></i> Private';
    }
    if(this.right_private_iconTarget.classList.contains("privated")){
      this.right_private_iconTarget.innerHTML = '<i class="fa-solid fa-lock"></i> Unprivate';
    }
    // console.log(this.right_private_iconTarget);

    // if(this.right_private_iconTarget.innerHTML == '<i class="fa-solid fa-lock-open"></i> Private'){
    //   console.log("private");
    // }

    // this.right_private_iconTarget.innerHTML == '<i class="fa-solid fa-lock"></i> Unprivate';

  }
}
