import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="move-button"
export default class extends Controller {
  static targets = ["button", "link"]

  connect() {
    console.log("move-button");
  }
  trigger() {
    this.buttonTargets.forEach(button => {
      button.classList.toggle("d-none");
    });
  }

  allowDrop(ev) {
    ev.preventDefault();
  }

  drag(ev) {
    console.log("drag activated");
    // ev.dataTransfer.setData("text", ev.target.id);
  }

  drop(ev) {
    console.log("drop activated");
    // ev.preventDefault();
    // var data = ev.dataTransfer.getData("text");
    // ev.target.appendChild(document.getElementById(data));
  }

}
