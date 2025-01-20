import { Controller } from "@hotwired/stimulus"
// import { useClickOutside } from 'stimulus-use';
import private_controller from "./private_controller";

// Connects to data-controller="home-options"

let menuOpen = false;

export default class extends Controller {
  static targets = ["menu", "submenu", "toggle_button", "private_button"]

  static values = {
    menuOpen: Boolean
  }

  connect() {
    console.log("home options controller connected");
    // useClickOutside(this);
  }

  // reset_menu() {
  //   this.menuTarget.classList
  // }

  toggle_open() {

  }

  // clickOutside(event) {
  //   // example to close a modal
  //   event.preventDefault();
  //   console.log("click outside");
  // }

  toggle_menu(event) {
    // check if menu is already open for other list
    // let openMenu;
    // let openButton;

    if(menuOpen && !event.currentTarget.classList.contains("options-button-toggled")){
      // console.log(event.currentTarget.classList);
      // console.log("toggled");
      let openMenu = document.getElementsByClassName("menu-toggled")[0];
      let openButton = document.getElementsByClassName("options-button-toggled")[0];

      openMenu.classList.remove("menu-toggled");
      openMenu.classList.add("d-none");
      openButton.classList.remove("options-button-toggled");
      openButton.innerHTML = '<i class="fa-solid fa-bars" ></i>';
    }

    // if(menuOpen){
    //   menuOpen = false;
    //   console.log("closed");
    // }
    // else{
    //   menuOpen = true;
    //   console.log("open");
    // }

    // open menu

    // check if menu is open for other list
    // if(menuOpen){
      // console.log(document.getElementsByClassName("options-button-toggled")[0]);
    // }

    this.menuTarget.classList.toggle("d-none");
    this.menuTarget.classList.toggle("menu-toggled");
    this.toggle_buttonTarget.classList.toggle("options-button-toggled");

    if(this.toggle_buttonTarget.classList.contains("options-button-toggled")){
      this.toggle_buttonTarget.innerHTML = '<i class="fa-solid fa-square-xmark" ></i>';
      menuOpen = true;
      // console.log("button changed to X");
    } else {
      this.toggle_buttonTarget.innerHTML = '<i class="fa-solid fa-bars" ></i>';
      menuOpen = false;
      // this.submenuTarget.classList.remove("d-none");
    }

    // if(openButton && openMenu){
    //   openButton.
    // }

  }

  hide_menu() {
    // if(!this.menuTarget.classList.contains("d-none")){
    //   console.log("hide menu");
    // }

  }

  toggle_submenu() {
    // this.submenuTarget.classList.toggle("d-none");
  }

  private(event) {
    // const list_id = parseInt(document.getElementsByClassName("home-list-card")[0].id);
    // console.log(`${event}`);

  }
}
