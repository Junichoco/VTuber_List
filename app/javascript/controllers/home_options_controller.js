import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="home-options"
export default class extends Controller {
  static targets = ["button"]
  connect() {
    console.log("home options controller connected");
  }

  toggle() {
    this.buttonTarget.classList.toggle("d-none");
    console.log("toggle triggered");
  }
}
